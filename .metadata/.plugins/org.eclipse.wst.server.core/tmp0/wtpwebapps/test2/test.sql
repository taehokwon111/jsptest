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


insert into member_tbl_001 values(100001, '김유정', '010-1111-2222', '서울 용산구', '20180501', '0');
insert into member_tbl_001 values(100002, '김윤경', '010-2222-3333', '서울 동작구', '20180822', '0');
insert into member_tbl_001 values(100003, '최승필', '010-3333-4444', '서울 강남구', '20180913', '1');
insert into member_tbl_001 values(100004, '강지현', '010-4444-5555', '서울 송파구', '20181107', '1');
insert into member_tbl_001 values(100005, '이원석', '010-5555-6666', '서울 성동구', '20190108', '0');
insert into member_tbl_001 values(100006, '김승현', '010-6666-7777', '서울 광진구', '20190117', '0');

select * from MEMBER_TBL_001;

select * from MEMBER_TBL_001

insert into book_tbl_001 values('A0001', '언어의 온도', 'A', '이기주', '20180501', '1');
insert into book_tbl_001 values('A0002', '골든아워', 'A', '이국종', '20180501', '1');
insert into book_tbl_001 values('B0001', '12가지 인생의 법칙', 'B', '피터슨', '20180601', '1');
insert into book_tbl_001 values('B0002', '당신이 옳다', 'B', '정혜신', '20180601', '0');
insert into book_tbl_001 values('C0001', '마력의 태동', 'C', '양윤옥', '20180901', '1');
insert into book_tbl_001 values('C0002', '꽃을 보듯 너를 본다', 'C', '나태주', '20180901', '1');

insert into  rental_tbl_001 values ('20190318', '00001', 'A0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190318', '00002', 'B0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190318', '00003', 'C0001',100001, '20190325', '', '0');
insert into  rental_tbl_001 values ('20190320', '00001', 'B0002',100005, '20190327', '20190324', '1');
insert into  rental_tbl_001 values ('20190322', '00001', 'A0002',100006, '20190329', '', '0');
insert into  rental_tbl_001 values ('20190323', '00001', 'C0003',100003, '20190330', '', '0');

select a.book_code, a.book_name, a.book_type, a.book_author, a.in_date, a.stat_fg
from book_tbl_001 a;