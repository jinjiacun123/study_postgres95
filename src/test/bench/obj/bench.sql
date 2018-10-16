select 1 as x
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select 2 as x
select * into table temp from tenk1 where (unique1 > 647) and (unique1 < 1648);
drop table temp;
select * into table temp from tenk1 where (unique1 > 647) and (unique1 < 1648);
drop table temp;
select 3 as x
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select 4 as x
select * into table temp from tenk1 where (unique1 > 647) and (unique1 < 1648);
drop table temp;
select * into table temp from tenk1 where (unique1 > 647) and (unique1 < 1648);
drop table temp;
select 5 as x
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select * into table temp from tenk1 where (unique2 > 301) and (unique2 < 402);
drop table temp;
select 6 as x
select * into table temp from tenk1 where (unique2 > 647) and (unique2 < 1648);
drop table temp;
select * into table temp from tenk1 where (unique2 > 647) and (unique2 < 1648);
drop table temp;
select 7 as x
select * from tenk1 where unique2 = 2001;
select * from tenk1 where unique2 = 2001;
select 8 as x
select * from tenk1 where (unique2 > 301) and (unique2 < 402);
select * from tenk1 where (unique2 > 301) and (unique2 < 402);
select 9 as x
select t1.*, t2.unique1 AS t2unique1, t2.unique2 AS t2unique2, t2.two AS t2two, t2.four AS t2four, t2.ten AS t2ten, t2.twenty AS t2twenty, t2.hundred AS t2hundred, t2.thousand AS t2thousand, t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous, t2.tenthous AS t2tenthous, t2.odd AS t2odd, t2.even AS t2even, t2.stringu1 AS t2stringu1, t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk1 t2 where (t1.unique2 = t2.unique2) and (t2.unique2 < 1000);
drop table temp;
select t1.*, t2.unique1 AS t2unique1, t2.unique2 AS t2unique2, t2.two AS t2two, t2.four AS t2four, t2.ten AS t2ten, t2.twenty AS t2twenty, t2.hundred AS t2hundred, t2.thousand AS t2thousand, t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous, t2.tenthous AS t2tenthous, t2.odd AS t2odd, t2.even AS t2even, t2.stringu1 AS t2stringu1, t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk1 t2 where (t1.unique2 = t2.unique2) and (t2.unique2 < 1000);
drop table temp;
select 10 as x
select t.*,B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten,B.twenty AS Btwenty,B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand,B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd,B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp from tenk1 t, Bprime B where t.unique2 = B.unique2;
drop table temp;
select t.*,B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten,B.twenty AS Btwenty,B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand,B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd,B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp from tenk1 t, Bprime B where t.unique2 = B.unique2;
drop table temp;
select 11 as x
select t1.*,o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk1 t2 where (o.unique2 = t1.unique2) and (t1.unique2 = t2.unique2) and (t1.unique2 < 1000) and (t2.unique2 < 1000);
drop table temp;
select t1.*,o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk1 t2 where (o.unique2 = t1.unique2) and (t1.unique2 = t2.unique2) and (t1.unique2 < 1000) and (t2.unique2 < 1000);
drop table temp;
select 12 as x
select t1.*,t2.unique1 AS t2unique1,t2.unique2 AS t2unique2,t2.two AS t2two, t2.four AS t2four,t2.ten AS t2ten,t2.twenty AS t2twenty,t2.hundred AS t2hundred,t2.thousand AS t2thousand,t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous,t2.tenthous AS t2tenthous,t2.odd AS t2odd, t2.even AS t2even,t2.stringu1 AS t2stringu1,t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk2 t2 where (t1.unique2 = t2.unique2) and (t2.unique2 < 1000);
drop table temp;
select t1.*,t2.unique1 AS t2unique1,t2.unique2 AS t2unique2,t2.two AS t2two, t2.four AS t2four,t2.ten AS t2ten,t2.twenty AS t2twenty,t2.hundred AS t2hundred,t2.thousand AS t2thousand,t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous,t2.tenthous AS t2tenthous,t2.odd AS t2odd, t2.even AS t2even,t2.stringu1 AS t2stringu1,t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk2 t2 where (t1.unique2 = t2.unique2) and (t2.unique2 < 1000);
drop table temp;
select 13 as x
select t.*,B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten,B.twenty AS Btwenty,B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand,B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd,B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp from tenk1 t, Bprime B where t.unique2 = B.unique2;
drop table temp;
select t.*,B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten,B.twenty AS Btwenty,B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand,B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd,B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp from tenk1 t, Bprime B where t.unique2 = B.unique2;
drop table temp;
select 14 as x
select t1.*,o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk1 t2 where (o.unique2 = t1.unique2) and (t1.unique2 = t2.unique2) and (t1.unique2 < 1000) and (t2.unique2 < 1000);
drop table temp;
select t1.*,o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk1 t2 where (o.unique2 = t1.unique2) and (t1.unique2 = t2.unique2) and (t1.unique2 < 1000) and (t2.unique2 < 1000);
drop table temp;
select 15 as x
select t1.*, t2.unique1 AS t2unique1, t2.unique2 AS t2unique2, t2.two AS t2two, t2.four AS t2four, t2.ten AS t2ten, t2.twenty AS t2twenty, t2.hundred AS t2hundred, t2.thousand AS t2thousand,t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous, t2.tenthous AS t2tenthous, t2.odd AS t2odd, t2.even AS t2even, t2.stringu1 AS t2stringu1, t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk2 t2 where (t1.unique1 = t2.unique1) and (t2.unique1 < 1000);
drop table temp;
select t1.*, t2.unique1 AS t2unique1, t2.unique2 AS t2unique2, t2.two AS t2two, t2.four AS t2four, t2.ten AS t2ten, t2.twenty AS t2twenty, t2.hundred AS t2hundred, t2.thousand AS t2thousand,t2.twothousand AS t2twothousand, t2.fivethous AS t2fivethous, t2.tenthous AS t2tenthous, t2.odd AS t2odd, t2.even AS t2even, t2.stringu1 AS t2stringu1, t2.stringu2 AS t2stringu2, t2.string4 AS t2string4 into table temp from tenk1 t1, tenk2 t2 where (t1.unique1 = t2.unique1) and (t2.unique1 < 1000);
drop table temp;
select 16 as x
select t.*, B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten, B.twenty AS Btwenty, B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand, B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd, B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp  from tenk1 t, Bprime B where t.unique1 = B.unique1;
drop table temp;
select t.*, B.unique1 AS Bunique1,B.unique2 AS Bunique2,B.two AS Btwo,B.four AS Bfour,B.ten AS Bten, B.twenty AS Btwenty, B.hundred AS Bhundred,B.thousand AS Bthousand,B.twothousand AS Btwothousand, B.fivethous AS Bfivethous,B.tenthous AS Btenthous,B.odd AS Bodd, B.even AS Beven,B.stringu1 AS Bstringu1,B.stringu2 AS Bstringu2,B.string4 AS Bstring4 into table temp  from tenk1 t, Bprime B where t.unique1 = B.unique1;
drop table temp;
select 17 as x
select t1.*, o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS  ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk2 t2 where (o.unique1 = t1.unique1) and (t1.unique1 = t2.unique1) and (t1.unique1 < 1000) and (t2.unique1 < 1000);
drop table temp;
select t1.*, o.unique1 AS ounique1,o.unique2 AS ounique2,o.two AS otwo,o.four AS ofour,o.ten AS oten,o.twenty AS otwenty,o.hundred AS  ohundred,o.thousand AS othousand,o.twothousand AS otwothousand,o.fivethous AS ofivethous,o.tenthous AS otenthous,o.odd AS oodd, o.even AS oeven,o.stringu1 AS ostringu1,o.stringu2 AS ostringu2,o.string4 AS ostring4 into table temp from onek o, tenk1 t1, tenk2 t2 where (o.unique1 = t1.unique1) and (t1.unique1 = t2.unique1) and (t1.unique1 < 1000) and (t2.unique1 < 1000);
drop table temp;
select 18 as x
select two, four, ten, twenty, hundred, string4 into table temp from tenk1;
drop table temp;
select two, four, ten, twenty, hundred, string4 into table temp from tenk1;
drop table temp;
select 19 as x
select * into table temp from onek;
drop table temp;
select * into table temp from onek;
drop table temp;
select 20 as x
select int4min(unique2) as x into table temp from tenk1;
drop table temp;
select int4min(unique2) as x into table temp from tenk1;
drop table temp;
select 21 as x
select 22 as x
select 23 as x
select int4min(unique2) as x into table temp from tenk1;
drop table temp;
select int4min(unique2) as x into table temp from tenk1;
drop table temp;
select 24 as x
select 25 as x
select 26 as x
insert into tenk1 (unique1, unique2, two, four, ten, twenty, hundred, thousand, twothousand, fivethous, tenthous, odd, even,stringu1,stringu2, string4) values (1000, 74, 0, 2, 0, 10, 50, 688, 1950, 4950, 9950, 1, 100, "ron may choi","jae kwang choi", "u. c. berkeley");
insert into tenk1 (unique1, unique2, two, four, ten, twenty, hundred, thousand, twothousand, fivethous, tenthous, odd, even, stringu1, stringu2, string4) values (1999, 60, 0, 2, 0, 10, 50, 688, 1950, 4950, 9950, 1, 100, "ron may choi", "jae kwang choi", "u. c. berkeley");
select 27 as x
delete from tenk1 where tenk1.unique2 = 877;
delete from tenk1 where tenk1.unique2 = 876;
select 28 as x
update tenk1 set unique2 = 10001 where tenk1.unique2 =1491;
update tenk1 set unique2 = 10023 where tenk1.unique2 =1480;
select 29 as x
insert into tenk1 (unique1, unique2, two, four, ten, twenty, hundred, thousand, twothousand, fivethous, tenthous, odd, even, stringu1, stringu2, string4) values (1000, 70, 0, 2, 0, 10, 50, 688, 1950, 4950, 9950, 1, 100, "ron may choi", "jae kwang choi", "u. c. berkeley");
insert into tenk1 (unique1, unique2, two, four, ten, twenty, hundred, thousand, twothousand, fivethous, tenthous, odd, even, stringu1, stringu2, string4) values (500, 40, 0, 2, 0, 10, 50, 688, 1950, 4950, 9950, 1, 100, "ron may choi", "jae kwang choi", "u. c. berkeley");
select 30 as x
delete from tenk1 where tenk1.unique2 = 10001;
delete from tenk1 where tenk1.unique2 = 900;
select 31 as x
update tenk1 set unique2 = 10088 where tenk1.unique2 =187;
update tenk1 set unique2 = 10003 where tenk1.unique2 =2000;
select 32 as x
update tenk1 set unique2 = 10020 where tenk1.unique2 =1974;
update tenk1 set unique2 = 160 where tenk1.unique2 =1140;
