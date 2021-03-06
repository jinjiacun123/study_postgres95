%{
/*-------------------------------------------------------------------------
 *
 * backendparse.y--
 *    yacc parser grammer for the "backend" initialization program.
 *
 * Copyright (c) 1994, Regents of the University of California
 *
 *
 * IDENTIFICATION
 *    $Header: /usr/local/cvsroot/postgres95/src/backend/bootstrap/bootparse.y,v 1.1.1.1.2.1 1996/08/20 15:25:29 scrappy Exp $
 *
 *-------------------------------------------------------------------------
 */
#include "access/heapam.h"
#include "access/tupdesc.h"
#include "bootstrap/bootstrap.h"
#include "utils/portal.h" 
#include "storage/smgr.h" 
#include "nodes/pg_list.h"
#include "catalog/catalog.h"
#include "catalog/catname.h"
#include "catalog/heap.h"
#include "catalog/index.h"
#include "commands/rename.h"
#include "commands/defrem.h"
#include "access/transam.h"
#include "access/xact.h"

#define DO_START { StartTransactionCommand();\
			     }

#define DO_END   { CommitTransactionCommand();\
					if (!Quiet) { EMITPROMPT; }\
						fflush(stdout); \
				 }

int num_tuples_read = 0;
static Oid objectid;

%}

%union {
    List		*list;
    IndexElem	*ielem;
    char		*str;
    int			ival;
}

%type <list>  arg_list
%type <ielem> index_params index_on
%type <ival>  const        ident
%type <ival>  optbootstrap optoideq tuple tuplelist

%token <ival>   CONST      ID
%token OPEN     XCLOSE     XCREATE INSERT_TUPLE
%token STRING   XDEFINE 
%token XDECLARE INDEX      ON      USING  XBUILD INDICES
%token COMMA    EQUALS     LPAREN  RPAREN
%token OBJ_ID   XBOOTSTRAP NULLVAL
%start TopLevel

%nonassoc low
%nonassoc high

%%

TopLevel:
	  Queries
	|
	;

Queries:
	  Query
	| Queries Query
	;

Query :
  	  OpenStmt
	| CloseStmt 
	| CreateStmt
	| InsertStmt 
	| DeclareIndexStmt
	| BuildIndsStmt
	;

OpenStmt: 
	  OPEN ident
		{ 
		    DO_START;
		    boot_openrel(LexIDStr($2));
		    DO_END; 
		}	
	;

CloseStmt:
	  XCLOSE ident %prec low
		{
		    DO_START;
		    closerel(LexIDStr($2));
		    DO_END;
		}
	| XCLOSE %prec high
		{
		    DO_START;
		    closerel(NULL);
		    DO_END;
		}
	;

CreateStmt:
	  XCREATE optbootstrap ident LPAREN 
		{ 
		    DO_START; 
		    numattr=(int)0;
		}
	  typelist 
		{ 
		    if (!Quiet) putchar('\n');
		    DO_END;
		}
	  RPAREN 
		{ 
		    DO_START; 

		    if ($2) {
				extern Relation reldesc;
				TupleDesc tupdesc;

				if (reldesc) {
					puts("create bootstrap: Warning, open relation");
					puts("exists, closing first");
					closerel(NULL);
				}
				if (DebugMode)
					puts("creating bootstrap relation");
				tupdesc = CreateTupleDesc(numattr,attrtypes);
				reldesc = heap_creatr(LexIDStr($3),
									  DEFAULT_SMGR,
									  tupdesc);
				if (DebugMode)
					puts("bootstrap relation created ok");
		    }
			else 
			{
				Oid		  id;
				TupleDesc tupdesc;
				/* extern Oid heap_create();*/

				tupdesc = CreateTupleDesc(numattr,attrtypes);
				id		= heap_create(LexIDStr($3),
								   	  NULL,
									  'n',
									  DEFAULT_SMGR,
									  tupdesc);
				if (!Quiet)
					printf("CREATED relation %s with OID %d\n",
					       LexIDStr($3), 
						   id);
		    }
		    DO_END;
		    if (DebugMode)
				puts("Commit End");
		}
	;

InsertStmt:
	  INSERT_TUPLE optoideq		
		{ 
		    DO_START;
		    if (DebugMode)
		        printf("tuple %d<", $2);
		    num_tuples_read = 0;
		}
	  LPAREN  tuplelist RPAREN	
  		{
		    if (num_tuples_read != numattr)
		        elog(WARN,"incorrect number of values for tuple");
		    if (reldesc == (Relation)NULL) {
		        elog(WARN,"must OPEN RELATION before INSERT\n");
		        err_out();
		    }
		    if (DebugMode)
				puts("Insert Begin");
		    objectid = $2;
		    InsertOneTuple(objectid);
		    if (DebugMode)
				puts("Insert End");
		    if (!Quiet) { putchar('\n'); }
				DO_END;
		    if (DebugMode)
				puts("Transaction End");
		} 
	;

DeclareIndexStmt:
	  XDECLARE INDEX ident ON ident USING ident LPAREN index_params RPAREN
		{
		  List *params;

		  DO_START;

		  params = lappend(NIL, (List*)$9);
		  DefineIndex(LexIDStr($5), 
					  LexIDStr($3), 
					  LexIDStr($7),
					  params, 
					  NIL, 
					  0, 
					  NIL);	  
		  DO_END;
		}
	;

BuildIndsStmt:
	  XBUILD INDICES	{ build_indices(); }

index_params:
	index_on ident
		{
		    IndexElem *n = (IndexElem*)$1;
		    n->class	 = LexIDStr($2);
		    $$ = n;
		}

index_on:
	  ident
		{
		    IndexElem *n = makeNode(IndexElem);
		    n->name		 = LexIDStr($1);
		    $$ = n;
		}
	| ident LPAREN arg_list RPAREN
		{
		    IndexElem *n = makeNode(IndexElem);
		    n->name		 = LexIDStr($1);
		    n->args		 = (List*)$3;
		    $$ = n;
		}

arg_list:
	  ident
		{
		  $$ = lappend(NIL, makeString(LexIDStr($1)));
		}
	| arg_list COMMA ident
		{
		  $$ = lappend((List*)$1, makeString(LexIDStr($3)));
		}
    
optbootstrap:
	    XBOOTSTRAP	{ $$ = 1; }
	|  		{ $$ = 0; }
	;

typelist:
	  typething
	| typelist COMMA typething
	;

typething:
	  ident EQUALS ident
		{ 
		   if(++numattr > MAXATTR)
				elog(FATAL,"Too many attributes\n");
		   DefineAttr(LexIDStr($1),LexIDStr($3),numattr-1);
		   if (DebugMode)
		       printf("\n");
		}
	;

optoideq:
	    OBJ_ID EQUALS ident { $$ = atol(LexIDStr($3)); 		}
	|			{ extern Oid newoid(); $$ = newoid();	}
	;

tuplelist:
	   tuple
	|  tuplelist tuple
	|  tuplelist COMMA tuple
	;

tuple:
	  ident {InsertOneValue(objectid, LexIDStr($1), num_tuples_read++); }
    | const {InsertOneValue(objectid, LexIDStr($1), num_tuples_read++); }
	| NULLVAL { InsertOneNull(num_tuples_read++); }
	;
  
const :
	  CONST { $$=yylval.ival; }
	;

ident :
	  ID	{ $$=yylval.ival; }
	;
%%


