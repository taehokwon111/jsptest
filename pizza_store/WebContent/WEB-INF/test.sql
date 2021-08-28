drop table tbl_pizza_01;
drop table tbl_shop_01;
drop table tbl_salelist_01;

create table tbl_pizza_01 (
	pcode char(4) not null primary key,
	pname varchar2(30),
	cost number(7)
);
create table tbl_shop_01 (
	scode char(4) not null primary key,
	sname varchar2(20)
);
create table tbl_salelist_01 (
	saleno number(7) not null primary key,
	scode char(4) not null,
	saledate date,
	pcode char(4) not null, 
	amount number(6)
	
);

insert into TBL_PIZZA_01 values('AA01', '������������', 6000);
insert into TBL_PIZZA_01 values('AA02', 'ġ������', 6500);
insert into TBL_PIZZA_01 values('AA03', '���۷δ�����', 7000);
insert into TBL_PIZZA_01 values('AA04', '�޺���̼�����', 7500);
insert into TBL_PIZZA_01 values('AA05', '��������', 6000);
insert into TBL_PIZZA_01 values('AA06', '������������', 7000);
insert into TBL_PIZZA_01 values('AA07', '�Ұ������', 8000);
insert into TBL_PIZZA_01 values('AA08', '����������', 8000);

insert into tbl_shop_01 values('S001', '������');
insert into tbl_shop_01 values('S002', '������');
insert into tbl_shop_01 values('S003', '������');
insert into tbl_shop_01 values('S004', '������');
insert into tbl_shop_01 values('S005', '��û��');
insert into tbl_shop_01 values('S006', '��õ��');

insert into tbl_salelist_01 values(100001, 'S001', '2018-12-02', 'AA01', 50);
insert into tbl_salelist_01 values(100002, 'S001', '2018-12-02', 'AA02', 30);
insert into tbl_salelist_01 values(100003, 'S001', '2018-12-02', 'AA03', 20);
insert into tbl_salelist_01 values(100004, 'S001', '2018-12-02', 'AA04', 50);
insert into tbl_salelist_01 values(100005, 'S003', '2018-12-03', 'AA01', 40);
insert into tbl_salelist_01 values(100006, 'S003', '2018-12-03', 'AA02', 60);
insert into tbl_salelist_01 values(100007, 'S003', '2018-12-03', 'AA04', 60);
insert into tbl_salelist_01 values(100008, 'S003', '2018-12-04', 'AA05', 70);
insert into tbl_salelist_01 values(100009, 'S005', '2018-12-02', 'AA01', 80);
insert into tbl_salelist_01 values(100010, 'S005', '2018-12-02', 'AA03', 30);
insert into tbl_salelist_01 values(100011, 'S005', '2018-12-02', 'AA04', 40);
insert into tbl_salelist_01 values(100012, 'S005', '2018-12-02', 'AA05', 50);
insert into tbl_salelist_01 values(100013, 'S004', '2018-12-04', 'AA01', 30);
insert into tbl_salelist_01 values(100014, 'S004', '2018-12-04', 'AA02', 20);
insert into tbl_salelist_01 values(100015, 'S004', '2018-12-04', 'AA06', 50);

select a.saleno, a.scode, c.sname, a.saledate, a.pcode, b.pname, amount, cost * a.amount
from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c
where a.pcode = b.pcode
and a.scode = c.scode 
order by saleno;

select a.scode, c.sname, (cost * a.amount)
from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c
where a.pcode = b.pcode
and a.scode = c.scode
order by a.scode asc;

select a.pcode, b.pname, (cost * a.amount)
from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c
where a.pcode = b.pcode
and a.scode = c.scode
order by a.scode asc;

select pcode, pname
from TBL_PIZZA_01;


