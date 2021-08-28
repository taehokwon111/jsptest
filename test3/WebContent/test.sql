drop table goods_tbl_003;
drop table store_tbl_003;
drop table sale_tbl_003;

create table goods_tbl_003 (
	goods_cd varchar2(6) not null primary key,
	goods_nm varchar2(30),
	goods_price number(8),
	cost number(8),
	in_date date
);
create table store_tbl_003 (
	store_cd varchar2(5) not null primary key,
	store_nm varchar2(20),
	store_fg number(8) check(store_fg in('0','1'))
);
create table sale_tbl_003 (
	sale_no varchar2(6) not null primary key,
	sale_ymd date not null ,
	sale_fg varchar2(1) not null check(sale_fg in ('1','2')),
	store_cd varchar2(5) references store_tbl_003 (store_cd), 
	goods_cd varchar2(6) references goods_tbl_003 (goods_cd), 
	sale_cnt number(3),
	pay_type varchar2(2) check(pay_type in ('01', '02'))
);

select sale_fg, sale_no, sale_ymd, goods_nm, sale_cnt*goods_price, pay_type
from goods_tbl_003 a, store_tbl_003 b, sale_tbl_003 c
where b.store_cd = c.store_cd
and a.goods_cd = c.goods_cd
and b.store_cd = 'A001'

insert into GOODS_TBL_003 values ('110001','���',1050,750,'20190302');
insert into GOODS_TBL_003 values ('110002','��',1300,800,'20190302');
insert into GOODS_TBL_003 values ('110003','����',2000,1700,'20190302');
insert into GOODS_TBL_003 values ('110004','ź������',900,750,'20190302');
insert into GOODS_TBL_003 values ('110005','�ﰢ���',750,300,'20190302');
insert into GOODS_TBL_003 values ('110006','���ݸ�',1500,1300,'20190302');
insert into GOODS_TBL_003 values ('110007','����',850,600,'20190302');

insert into STORE_TBL_003 values ('A001','���¿���',0);
insert into STORE_TBL_003 values ('A002','�ѳ���',0);
insert into STORE_TBL_003 values ('A003','������',0);
insert into STORE_TBL_003 values ('B001','��ȭ��',1);
insert into STORE_TBL_003 values ('C001','�溣��',1);
insert into STORE_TBL_003 values ('D001','�����',0);
insert into STORE_TBL_003 values ('D002','�漮��',1);
insert into STORE_TBL_003 values ('E001','��ȣ��',0);

insert into SALE_TBL_003 values('0001','20190325','1','A001','110001',2,'02');
insert into SALE_TBL_003 values('0002','20190325','1','B001','110003',2,'02');
insert into SALE_TBL_003 values('0003','20190325','1','D001','110003',1,'01');
insert into SALE_TBL_003 values('0004','20190325','1','A001','110006',5,'02');
insert into SALE_TBL_003 values('0005','20190325','1','C001','110003',2,'02');
insert into SALE_TBL_003 values('0006','20190325','2','C001','110003',2,'02');
insert into SALE_TBL_003 values('0007','20190325','1','A002','110005',4,'02');
insert into SALE_TBL_003 values('0008','20190325','1','A003','110004',4,'02');
insert into SALE_TBL_003 values('0009','20190325','1','B001','110001',2,'01');
insert into SALE_TBL_003 values('0010','20190325','1','A002','110006',1,'02');

select to_char(max(sale_no)+1, 'fm0000'), sysdate from SALE_TBL_003









select store_cd, store_nm from STORE_TBL_003
select goods_cd, goods_nm from GOODS_TBL_003

drop sequence saleseq 
create sequence saleseq start with 11 ;

create sequence goodseq start with 110009 ;

select to_char(saleseq.nextval, 'fm0000'), to_char(sysdate,'yyyymmdd') from dual;

select goods_cd,goods_nm,goods_price,cost,to_char(in_date,'yyyymmdd') from GOODS_TBL_003

select goodseq.nextval,to_char(sysdate,'yyyy-mm-dd') from dual;


select b.store_cd, b.store_nm, 
sum(a.goods_price * case when c.pay_type = '01' then c.sale_cnt else 0 end),
sum(a.goods_price * case when c.pay_type = '02' then c.sale_cnt else 0 end),
sum(a.goods_price * c.sale_cnt)
from goods_tbl_003 a, store_tbl_003 b, sale_tbl_003 c
where b.store_cd = c.store_cd
and a.goods_cd = c.goods_cd
group by b.store_cd, b.store_nm
order by 5 desc







