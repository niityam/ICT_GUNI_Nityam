-- 2nd practical
-- A
select Client_Name from client_Info;
select Client_Name, City from client_Info;
select Description from Product_Info;
select Client_Name from client_Info where City = "Bombay";
select S_name from Salesman_Info where Sal_amt = 3000;
select DISTINCT City from client_Info ;
select Sell_Price from Product_Info ;
select * from Product_Info order by sell_price;
select * from Product_Info order by sell_price, Cost_Price;
select Product_no, Description from Product_Info order by Sell_Price DESC;

-- B
SET SQL_SAFE_UPDATES = 0;
update client_Info set City = "Bombay" where Client_no = "C002";
update client_Info set Bal_Due = 1000 where Client_no = "C001";
update Product_Info set Sell_Price = 950 where Product_no = "P003";
update Salesman_Info set City = "Mumbai";

-- C
delete from Salesman_Info where Sal_amt = 3500;
delete from Product_Info where Qty_on_hand = 100;
delete from client_Info where State = "TamilNadu";

-- E
alter table client_Info add telephone numeric(10) ;
alter table Product_Info modify Sell_Price numeric(10,2);
alter table client_Info change telephone contact numeric(10);
alter table client_Info drop contact;

-- F
create table employee(id numeric(6), name varchar(15), salary numeric(6), city varchar(10));
insert into employee values(1, "nityam", 150000, "Goa");
insert into employee values(2, "nityam", 150000, "Goa");
insert into employee values(3, "nityam", 150000, "Goa");
insert into employee values(4, "nityam", 150000, "Goa");
insert into employee values(5, "nityam", 150000, "Goa");
select * from employee;

drop table employee;

-- G
alter table Salesman_Info rename sman_mast;
