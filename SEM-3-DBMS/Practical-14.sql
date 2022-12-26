-- Warning: Might Be Wrong 
-- Write Cursor which display employee information from Employee table 

delimiter //  
create procedure q1()  
begin   
declare x int; 
declare y varchar(20);  
declare z varchar(20); 
declare a int; 
declare exit_loop boolean;  
declare c1 cursor for select empno,name,city,salary from employee;  
declare continue handler for not found set exit_loop= True; 

open c1;  
L1 : loop fetch c1 into x,y,z,a; select x,y,z,a;  
if exit_loop  then   close c1; leave l1; end if; end loop  l1; end //  
call q1();  	 	 	 	 	 	 	 	 	 	 	 
 	 	 	 	 	 	 	 	 	 	 	 
-- Implements Cursor which reads one by one row from Employee table and insert data in EmployeeInfo table. 

delimiter //  
create procedure q2()   
begin  

declare x int;  
declare y varchar(20);  
declare z varchar(20); 
declare b int;
declare exit_loop boolean; 
declare c2 cursor for  select empno,name,city,salary from employee; 
declare continue handler for  not found set exit_loop=true; 

open c2; l2:loop 
fetch c2 into  x,y,z,b; 
insert into employeeinfo value(x,y,z,b);    
if exit_loop then   close c2;  leave l2;  end if;  end loop l2;  
end// 

DROP PROCEDURE q2;  
call q2()  
  
-- Implements Cursor which reads one by one row from Student table and insert all BDA student in data in table BDAStudent and insert all CBA student data in table CBAStudent and insert all CS student data in table CSStudent 
 
delimiter // 
create procedure cursor_3()  
begin   declare x int;  
declare y varchar(30);  
declare z varchar(30);  
declare exit_loop boolean; 
declare c1 cursor for select rollno,name,branch from student;  
declare continue handler for not found set exit_loop=true;  
open c1;  l1:loop  fetch c1 into x,y,z;  if z="bda" then 
insert into bdastudent values(x,y,z);  end if;  if z="cba" then 
insert into cbastudent values(x,y,z); 
 
if z="cs" then 
insert into csstudent values(x,y,z);  
end if; if exit_loop then   
close c1;  leave l1;  end if;  end loop l1;  
end//  
call cursor_3(); 
 
-- Employee Management system manage all employee information. Implements Cursor which reads data from Employee table and update salary. Increase salary by 5000 whose salary is more than 40000 else increase salary by 1000. 
 
delimiter // create procedure q4()  begin 
declare x int;  
declare y varchar(30);  
declare z varchar(30);  
declare a int;  
declare exit_loop boolean; 
declare c1 cursor for select empno,name,city,salary from employee; 
declare continue handler  for not found set exit_loop=true;  
open c1;  l1:loop 
fetch c1 into x,y,z,a;  
if z>40000 then 
update employee set salary=salary+5000;  
end if;  
if z<40000 then 
update employee set salary=salary+1000; 
if exit_loop then  
close c1;  leave l1;  end if;  end loop l1;  
end//   

call q4(); 
 
-- Implements Cursor which reads one by one row from Result table and insert row in  Result1 table. Read percentage from result and based on percentage assign class to Students as per below 
 
delimiter // 
create procedure q5()  
begin   declare x int;  
declare y varchar(30);  
declare z varchar(30);  
declare exit_loop boolean; 
declare c1 cursor for select rollno,name,percentage from result;  
declare continue handler  for not found set exit_loop=true;  
open c1;  l1:loop  fetch c1 into x,y,z;  if z>70 and z<100 then 
insert into result1 values(x,y,"Distinction");  end if; 
if z>60 and z<69 then 
insert into result1 values(x,y,"First Class");  end if; 
if z>40 and z<59 then 
insert into result1 values(x,y,"Second Class"); 
if z<40 then 
insert into result1 values(x,y,"Fail");  
end if;  if exit_loop then close c1;  
leave l1;  end if;  end loop l1; 
end//
 
call q5(); 
