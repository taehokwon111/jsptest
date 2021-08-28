create table member_tbl_001(
cust_no number(6) not null primary key,
cust_name varchar2(20) not null,
phone varchar2(13) not null,
address varchar2(60),
join_date date,
stat_fg varchar2(2)
constraint fg_domain check (stat_fg between '0' and '2')
);

create table book_tbl_001(
book_code varchar2(10) not null primary key,
book_name varchar2(50) not null,
book_type varchar2(2) check (book_type in ('A', 'B', 'C')),
book_author varchar2(20),
in_date date,
stat_fg varchar2(2) check (stat_fg between '0' and '1')
)

create table rental_tbl_001(
rent_ymd varchar2(8) not null,
rent_no varchar2(5) not null,
rent_book varchar2(10) not null,
rent_rent number(6) not null,
close_ymd varchar2(8) not null,
return_ymd varchar2(8),
return_fg varchar2(2) check (return_fg in (0, 1)),
constraint rental_pk primary key ( rent_ymd, rent_no)
)

drop table member_tbl_001;
drop table book_tbl_001;
drop table rental_tbl_001;


insert into member_tbl_001 values(100001, '������', '010-1111-2222', '���� ��걸', '20180501', '0');
insert into member_tbl_001 values(100002, '������', '010-2222-3333', '���� ���۱�', '20180822', '0');
insert into member_tbl_001 values(100003, '�ֽ���', '010-3333-4444', '���� ������', '20180913', '1');
insert into member_tbl_001 values(100004, '������', '010-4444-5555', '���� ���ı�', '20181107', '1');
insert into member_tbl_001 values(100005, '�̿���', '010-5555-6666', '���� ������', '20190108', '0');
insert into member_tbl_001 values(100006, '�����', '010-6666-7777', '���� ������', '20190117', '0');

select * from MEMBER_TBL_001;

select * from MEMBER_TBL_001

insert into book_tbl_001 values('A0001', '����� �µ�', 'A', '�̱���', '20180501', '1');
insert into book_tbl_001 values('A0002', '���ƿ�', 'A', '�̱���', '20180501', '1');
insert into book_tbl_001 values('B0001', '12���� �λ��� ��Ģ', 'B', '���ͽ�', '20180601', '1');
insert into book_tbl_001 values('B0002', '����� �Ǵ�', 'B', '������', '20180601', '0');
insert into book_tbl_001 values('C0001', '������ �µ�', 'C', '������', '20180901', '1');
insert into book_tbl_001 values('C0002', '���� ���� �ʸ� ����', 'C', '������', '20180901', '1');

insert into  rental_tbl_001 values ('20190318', '00001', 'A0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190318', '00002', 'B0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190318', '00003', 'C0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190320', '00001', 'B0002',100005, '20190327', '20190324', '1');
insert into  rental_tbl_001 values ('20190322', '00001', 'A0002',100006, '20190329', '', '0');
insert into  rental_tbl_001 values ('20190323', '00001', 'C0003',100003, '20190330', '', '0');

select a.book_code, a.book_name, a.book_type, a.book_author, a.in_date, a.stat_fg
from book_tbl_001 a;