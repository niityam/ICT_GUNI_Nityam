create database BDA_nityam;
use BDA_nityam;

create table client_Info(Client_no Varchar(6), Client_Name varchar(20), City varchar(15), Pincode numeric(8), State varchar(15), Bal_Due numeric(10,2), Date_of_commencement date);
create table Product_Info(Product_no varchar(6), Description varchar(15), P_Percent numeric(4,2), U_Measure varchar(10), Qty_on_hand numeric(8), Reoder_lvl numeric(8), Sell_Price numeric(8,2), Cost_Price numeric(8,2));
create table Salesman_Info(S_no varchar(6),S_name varchar(20), Mobile_Number numeric(10),City varchar(20), Pincode numeric(8), State varchar(20), Sal_amt numeric(8,2), Tgt_to_get numeric(6,2), Ytd_Sales numeric(6,2), remarks varchar(12));

desc client_Info;
desc Product_Info;
desc Salesman_Info; 

insert into client_Info values("C001", "Ivan", "Bombay", 400054, "Maharashtra", 15000, "2021-01-04");
insert into client_Info values("C002", "Vandana", "Madras", 740001, "TamilNadu", 0, "2021-01-06");
insert into client_Info values("C003", "Pramada", "Bombay", 400057,"Maharashtra", "5000", "2021-01-07");
insert into client_Info values("C004", "Basu", "Bombay", 400056, "Maharashtra", 0, "2021-01-09" );
insert into client_Info values("c005", "Ravi", "Delhi", 100001, "Gujarat", 2000, "2021-01-11");
insert into client_Info values("C006", "Rukmani", "Bombay", 400050,"Maharashtra", 0, "2021-01-12");

insert into Product_Info values("P001", "Sound Card", 5, "Piece", 100, 20, 525, 500);
insert into Product_Info values("P002", "Monitor", 6, "Piece", 10,3,12000,11280);
insert into Product_Info values("P003", "Mouse", 5, "Piece", 20,5,1050,1000);
insert into Product_Info values("P004", "Network Device", 5, "Piece", 100,20, 525,500);
insert into Product_Info values("P005", "Keyboards", 2, "Piece", 10,3,3150,3050);
insert into Product_Info values("P006", "Webcams", 6, "Piece", 10,3,5250,5100);
insert into Product_Info values("P007", "Ext Device", 4, "Piece", 10,3,8400,8000);

insert into Salesman_Info values("S001","Kiran",9406759943, "Ahmedabad", 380015, "Gujarat",3000,100,50,"Excellent");
insert into Salesman_Info values("S002","Manish",7865463728, "baroda", 400001, "Gujarat",3000,200,100,"Excellent");
insert into Salesman_Info values("S003","Ravi",9878905467, "surat", 300032, "Gujarat",3000,200,100,"Excellent");
insert into Salesman_Info values("S004","Ashish",7987092134, "Rajkot", 600044, "Gujarat",3000,200,150,"Excellent");
select * from client_Info;
select Product_no, sell_price, cost_price from Product_Info;
select S_no, S_name, remarks, Sal_amt from Salesman_Info;
show tables;