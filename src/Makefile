#-------------------------------------------------------------------------
#
# Makefile.inc--
#    Build and install postgres.
#
# Copyright (c) 1994, Regents of the University of California
#
#
# IDENTIFICATION
#    $Header: /usr/local/cvsroot/postgres95/src/Makefile,v 1.3.2.2 1996/08/20 04:10:35 scrappy Exp $
#
# NOTES
#	objdir	- location of the objects and generated files (eg. obj)
#
#-------------------------------------------------------------------------

MKDIR=./mk
-include $(MKDIR)/../Makefile.global

FIND = find
# assuming gnu tar and split here
TAR  = tar
SPLIT = split

ETAGS = etags
XARGS = xargs

CFLAGS += -fPIC

.DEFAULT all:
	$(MAKE) -C backend $@
	$(MAKE) -C libpq $@
ifeq ($(USE_TCL), true)
	$(MAKE) -C libpgtcl $@
endif
	$(MAKE) -C bin $@
ifeq (../doc, $(wildcard ../doc))
	$(MAKE) -C ../doc $@
endif
	@echo All of Postgres95 is successfully made.  Ready to install.

TAGS:
	rm -f TAGS; \
	for i in backend libpq bin; do \
	  $(FIND) $$i -name '*.[chyl]' -print | $(XARGS) $(ETAGS) -a ; \
	done

# target to generate a backup tar file and split files that can be 
# saved to 1.44M floppy
BACKUP:
	rm -f BACKUP.filelist BACKUP.tgz; \
	$(FIND) . -not -path '*obj/*' -not -path '*data/*' -type f -print > BACKUP.filelist; \
	$(TAR) --files-from BACKUP.filelist -c -z -v -f BACKUP.tgz
	$(SPLIT) --bytes=1400k BACKUP.tgz pgBACKUP.	

.PHONY: TAGS
.PHONY: BACKUP
