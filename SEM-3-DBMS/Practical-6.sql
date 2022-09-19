-- 6th Practical
create database company;
use company;
create table tblemployee(emp_id int unique, emp_name varchar(30), job_name varchar(30), hire_date date, salary int, dep_id int);

insert into tblemployee values(68319,"KAYLING","PRESIDENT","1991-11-18",6000,1001);
insert into tblemployee values(66928,"BLAZE","MANAGER","1991-05-01",2750,3001);
insert into tblemployee values(67832,"CLARE","MANAGER","1991-06-09",2550,1001);
insert into tblemployee values(65646,"JONAS","MANAGER","1991-04-02",2957,2001);
insert into tblemployee values(67858,"SCARLET","ANALYST","1997-04-19",3100,2001);
insert into tblemployee values(69062,"FRANK","ANALYST","1991-12-03",3100,2001);
insert into tblemployee values(63679,"SANDRINE","CLERK","1990-12-18",900,2001);
insert into tblemployee values(64989,"ADELYN","SALESMAN","1991-02-20",1700,3001);
insert into tblemployee values(65271,"WADE","SALESMAN","1991-02-22",1350,3001);
insert into tblemployee values(66564,"MADDEN","SALESMAN","1991-09-28",1350,3001);
insert into tblemployee values(68454,"TUCKER","SALESMAN","1991-09-08",1600,3001);
insert into tblemployee values(68736,"ADNRES","CLERK","1997-05-23",1200,2001);
insert into tblemployee values(69000,"JULIUS","CLERK","1991-12-03",1050,3001);
insert into tblemployee values(69324,"MARKER","CLERK","1992-01-23",1400,1001);

-- 1
select job_name,  count(*) from tblemployee group by job_name;
-- 2
select dep_id, count(*) from tblemployee group by dep_id;
-- 3
select emp_name from tblemployee where (salary>2000);
-- 4
select emp_name from tblemployee where hire_date > "1991-04-03";
-- 5
select job_name,  count(*) from tblemployee group by job_name order by count(*) desc;
-- 6
select job_name, count(*) from tblemployee group by job_name having count(*) >3;
-- 7
select dep_id, sum(salary) from tblemployee group by dep_id; 
-- 8
select dep_id,count(emp_name) from tblemployee where emp_name like '%n' group by dep_id;
-- 9
select dep_id, count(emp_name) from tblemployee where emp_name like '%a%' group by dep_id;
-- 10
select dep_id, count(emp_name) from tblemployee where salary > (select avg(salary) from tblemployee) group by dep_id;
-- 11
select dep_id, count(emp_name) from tblemployee group by dep_id having count(emp_name)>2 order by dep_id desc;
-- 12
select dep_id, avg(salary) from tblemployee group by dep_id;
-- 13
select dep_id, salary, emp_name from tblemployee where salary in (select max(salary) from tblemployee group by dep_id); 
-- 14
select distinct dep_id, salary, emp_name from tblemployee where salary in (select min(salary) from tblemployee group by dep_id); 
