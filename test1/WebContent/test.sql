drop table tbl_product_01;



insert into tbl_product_01 values('AA01', '아메리카노', 3000);
insert into tbl_product_01 values('AA02', '에스프레소', 3500);
insert into tbl_product_01 values('AA03', '카페라뗴', 4000);
insert into tbl_product_01 values('AA04', '카라멜마키아또', 4500);
insert into tbl_product_01 values('AA05', '카푸치노', 5000);
insert into tbl_product_01 values('AA06', '초코롤케이크', 6000);
insert into tbl_product_01 values('AA07', '녹차롤케이크', 6500);
insert into tbl_product_01 values('AA08', '망고쥬스', 7000);
insert into tbl_product_01 values('AA09', '핫초코', 2500);

insert into tbl_shop_01 values('S001', '강남점');
insert into tbl_shop_01 values('S002', '강서점');
insert into tbl_shop_01 values('S003', '강동점');
insert into tbl_shop_01 values('S004', '강북점');
insert into tbl_shop_01 values('S005', '동대문점');
insert into tbl_shop_01 values('S006', '인천점');

insert into tbl_salelist_01 values(100001, 'AA01', '20180902', 'S001', 50);
insert into tbl_salelist_01 values(100002, 'AA03', '20180902', 'S002', 40);
insert into tbl_salelist_01 values(100003, 'AA04', '20180902', 'S002', 20);
insert into tbl_salelist_01 values(100004, 'AA04', '20180902', 'S001', 30);
insert into tbl_salelist_01 values(100005, 'AA05', '20180902', 'S004', 40);
insert into tbl_salelist_01 values(100006, 'AA03', '20180902', 'S004', 30);
insert into tbl_salelist_01 values(100007, 'AA01', '20180902', 'S003', 40);
insert into tbl_salelist_01 values(100008, 'AA04', '20180902', 'S004', 10);
insert into tbl_salelist_01 values(100009, 'AA01', '20180902', 'S003', 20);
insert into tbl_salelist_01 values(100010, 'AA05', '20180902', 'S003', 30);
insert into tbl_salelist_01 values(100011, 'AA01', '20180902', 'S001', 40);
insert into tbl_salelist_01 values(100012, 'AA03', '20180902', 'S002', 50);
insert into tbl_salelist_01 values(100013, 'AA04', '20180902', 'S002', 50);
insert into tbl_salelist_01 values(100014, 'AA05', '20180902', 'S004', 20);
insert into tbl_salelist_01 values(100015, 'AA01', '20180902', 'S003', 30);

create table tbl_product_01(
pcode varchar2(10) not null primary key,
name varchar2(30),
cost number(10)
)

create table tbl_shop_01(
scode varchar2(10) not null primary key,
sname varchar2(20)
)

create table tbl_salelist_01(
saleno number(10) not null primary key,
pcode varchar2(10) not null,
saledate date,
scode varchar2(10) not null,
amount number(10)
)

select c.saleno, c.pcode, c.saledate, c.scode, a.name, c.amount, (a.cost * c.amount)
from tbl_product_01 a, tbl_shop_01 b, tbl_salelist_01 c
where a.pcode = c.pcode and b.scode = c.scode;

select distinct b.scode, b.sname, (
select (a.cost * c.amount)
)
from tbl_product_01 a, tbl_shop_01 b, tbl_salelist_01 c
order by b.scode;

select AA.scode, TSH.sname, AA.SHAP from
(select TSALE.scode, SUM(TPRO.cost * tsale.amount) as SHAP
from tbl_salelist_01 TSALE join tbl_product_01 TPRO
on TSALE.pcode = TPRO.pcode
GROUP BY TSALE.scode)AA join tbl_shop_01 TSH
on AA.scode = TSH.scode;

select TPRO.pcode, TPRO.name, sum(TPRO.cost * tsale.amount) as HAP
from tbl_product_01 TPRO join tbl_salelist_01 TSALE
on TSALE.pcode = TPRO.pcode
GROUP BY TPRO.pcode, TPRO.name
ORDER BY TPRO.pcode ASC;