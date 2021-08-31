create table TBL_MEMBER_202005(
m_no char(1) NOT NULL primary key,
m_name varchar2(20),
p_code char(2),
p_school char(1),
m_jumin char(13),
m_city varchar2(20)
)

DROP TABLE TBL_MEMBER_202005
DROP TABLE TBL_VOTE_202005
DROP TABLE TBL_PARTY_202005


create table TBL_PARTY_202005(
p_code char(2) primary key,
p_name varchar2(20),
p_indate date,
p_reader varchar2(20),
p_tel1 char(3),
p_tel2 char(4),
p_tel3 char(4)
)

create table TBL_VOTE_202005(
v_jumin char(13) NOT NULL primary key,
v_name varchar2(20),
m_no char(1),
v_time char(4),
v_area char(20),
v_confirm char(1)
)

insert into TBL_MEMBER_202005 values('1', '은후보', 'P1', '1', '0302080000001', '용산구');
insert into TBL_MEMBER_202005 values('2', '강후보', 'P2', '2', '0302080000002', '중구');
insert into TBL_MEMBER_202005 values('3', '김후보', 'P3', '3', '0302080000003', '종로구');
insert into TBL_MEMBER_202005 values('4', '이후보', 'P4', '1', '0302080000004', '중랑구');
insert into TBL_MEMBER_202005 values('5', '박후보', 'P5', '2', '0302080000005', '북구');
insert into TBL_MEMBER_202005 values('6', '서후보', 'P6', '4', '0302080000006', '서초구');

insert into TBL_PARTY_202005 values('P1', '올리고당', '20200530', '은대표', '02', '1111', '2222');
insert into TBL_PARTY_202005 values('P2', '포도당', '20200530', '강대표', '02', '1111', '3333');
insert into TBL_PARTY_202005 values('P3', '여당', '20200530', '김대표', '02', '1111', '4444');
insert into TBL_PARTY_202005 values('P4', '야당', '20200530', '이대표', '02', '1111', '5555');
insert into TBL_PARTY_202005 values('P5', '남당', '20200530', '박대표', '02', '1111', '6666');
insert into TBL_PARTY_202005 values('P6', '배고프당', '20200530', '부대표', '02', '1111', '7777');

insert into TBL_VOTE_202005 values('9803011000001', '김시민', '1', '0930', '제1투표장', 'N');
insert into TBL_VOTE_202005 values('5303012000002', '이시민', '2', '0930', '제1투표장', 'N');
insert into TBL_VOTE_202005 values('6803011000003', '박시민', '3', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('9003012000004', '유시민', '4', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('7803011000005', '은시민', '5', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('4303012000006', '강시민', '6', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('3803011000007', '문시민', '3', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('8003012000008', '조시민', '2', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('7803011000009', '최시민', '6', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('7803012000010', '철시민', '2', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('7203011000011', '금시민', '3', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('7503012000012', '여시민', '3', '0930', '제1투표장', 'Y');
insert into TBL_VOTE_202005 values('6703011000013', '에시민', '3', '0930', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('5003012000014', '빅시민', '5', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('9803011000015', '도시민', '5', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('7803012000016', '유시민', '2', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('8903011000017', '아시민', '2', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('3703012000018', '세시민', '1', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('8603011000019', '마시민', '1', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('4903012000020', '비시민', '1', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('3903011000021', '차시민', '4', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('9003012000022', '일시민', '4', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('6903012000023', '먹시민', '3', '1330', '제2투표장', 'Y');
insert into TBL_VOTE_202005 values('6903012000024', '목시민', '2', '1330', '제2투표장', 'Y');


select m_no, m_name, p_code, p_school, concat(concat(SUBSTR(m_jumin, 1, 6),'-'), SUBSTR(m_jumin, 7, 12)), m_city from TBL_MEMBER_202005;

select c.v_name, SUBSTR(v_jumin, 1, 2) as year, SUBSTR(v_jumin, 3, 2) as month, SUBSTR(v_jumin, 5, 2) as day ,SUBSTR(v_jumin, 12, 2) as test, SUBSTR(v_jumin, 7, 1) as gender, c.m_no, SUBSTR(v_time, 1, 2), SUBSTR(v_time, 3, 2), c.v_area, c.v_confirm
from TBL_MEMBER_202005 a, TBL_PARTY_202005 b, TBL_VOTE_202005 c
where a.p_code = b.p_code
and a.m_no = c.m_no
group by v_name, v_jumin, c.m_no, v_time, v_area, v_confirm, m_jumin
order by SUBSTR(v_jumin, 12, 2);

select to_number(to_char(sysdate, 'yyyy')) -
       to_number(decode(substr(m_jumin, 7, 1), '1', 19||substr(m_jumin, 1, 2), 
                                     '2', 19||substr(m_jumin, 1, 2),
                                     20||substr(m_jumin, 1, 2))) - 
       case when to_char(sysdate, 'mmdd') >= substr(m_jumin, 3, 4) then 0 else 1 end
from tbl_member_202005


select to_number(to_char(sysdate, 'yyyy')) -
       to_number(decode(substr(m_jumin, 7, 1), '1', 19||substr(m_jumin, 1, 2), 
                                     '2', 19||substr(m_jumin, 1, 2),
                                     20||substr(m_jumin, 1, 2))) - 
       case when to_char(sysdate, 'mmdd') >= substr(m_jumin, 3, 4) then 0 else 1 end
from tbl_member_202005
==================

select a.m_name, b.p_name, count(c.M_NO)
from TBL_MEMBER_202005 a, TBL_PARTY_202005 b, TBL_VOTE_202005 c
where a.m_no = c.m_no and a.p_code = b.p_code and c.v_confirm = 'Y'
group by a.m_name, p_name
order by count(c.M_NO) desc;


===================

select a.m_name, count(c.M_NO)
from TBL_MEMBER_202005 a, TBL_VOTE_202005 c
where a.m_no = c.m_no and c.v_confirm = 'Y'
group by a.m_name
order by count(c.M_NO) desc;

select * from TBL_VOTE_202005 where m_no = '06'

select a.m_name, b.p_name, count(c.M_NO)
from tbl_member_202005 a, tbl_vote_202005 b, tbl_party_202005 c
where a.m_no = b.m_no
and a.p_code = c.p_code;

select * 
from tbl_party_202005

selectto_number(to_char(sysdate, 'yyyy')) -
       to_number(decode(substr(m_jumin, 7, 1), '1', 19||substr(m_jumin, 1, 2), 
                                     '2', 19||substr(m_jumin, 1, 2),
                                     20||substr(m_jumin, 1, 2))) - 
       case when to_char(sysdate, 'mmdd') >= substr(m_jumin, 3, 4) then 0 else 1 end
from tbl_member_202005;

