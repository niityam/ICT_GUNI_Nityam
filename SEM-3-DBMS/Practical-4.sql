-- 4th practical
create database college;
use college;
create table student(Rollno varchar(4) primary key check(Rollno like 'S%'), Name varchar(20)NOT NULL, Email varchar(20) unique, Specialization varchar(5) check(Specialization in ("BDA","CS","CBA")), Age int check(Age> 16 and Age<25), City varchar(20), Pincode decimal(8), State varchar(20) default "Gujarat");
insert into student values ("S001" , "Darshil" , "darshil@gmail.com" , "BDA" , 18 ,"Surat" , 385009 , "Gujarat");
insert into student values ("S002" , "Jay" , "jay@gmail.com" , "BDA" , 19 ,"Baroda" , 391510 , "Gujarat");
insert into student values ("S003" , "Smit" , "smit@gmail.com" , "CS" , 18 ,"Mumbai" , 400001 , "Maharashtra");
insert into student values ("S004" , "Dev" , "dev@gmail.com" , "CS" , 20 ,"Ahmedabad" , 380006 , "Gujarat");
insert into student values ("S005" , "Raj" , "raj@gmail.com" , "CBA" , 21 ,"Ahmedabad" , 380006 , "Gujarat");
insert into student values ("S006" , "Hardik" , "hardik@gmail.com" , "CBA" , 19 ,"Rajkot" , 360001 , "Gujarat");
insert into student values ("S007" , "Pratham" , "pratham@gmail.com" , "BDA" ,18 , "Banglore" , 560063 , "Karnataka");

create table Instructor(Instructor_ID varchar(4) primary key check(Instructor_ID like 'I%'), Instrutor_Name varchar(20) not null, Experience float check(Experience>0), Course_Taught int check(Course_Taught > 0) );
insert into Instructor values ("I001", "Jerry Morrow" , 5 , 5);
insert into Instructor values ("I002", "Jose Portilla" , 7 , 12);
insert into Instructor values ("I003", "Stephane Maarek" , 6.5 , 6);
insert into Instructor values ("I004", "Mike Meyers" , 8.5 , 15);

create table Course(Course_ID varchar(4) primary key check(Course_ID like 'C%'), Course_Name varchar(20) not null, TotalHour int check(TotalHour>10 and TotalHour<40), Instructor_ID varchar(4), Fees int check(Fees >0 and Fees<10000), Type varchar(20) check(Type in ("Programming", "Web Development", "Data Science")), Rating float check(Rating>0 and Rating<=5), foreign key(Instructor_ID) references Instructor(Instructor_ID));
insert into Course values ("C001" , "Java" , 25 , "I002" , 1500 , "Programming" ,3.5);
insert into Course values ("C002" , "C++ Basics" , 20 , "I001" , 3000 ,"Programming" , 4.55);
insert into Course values ("C003" , "Angular" , 30 , "I003" , 5000 , "Web Development" , 4.1);
insert into Course values ("C004" , "ReactJS" , 35 , "I004" , 6000 , "Web Development" , 3.6);
insert into Course values ("C005" , "CSS and JavaScript" , 21 , "I003" , 2500 ,"Web Development" , 4.3);
insert into Course values ("C006" , "Machine Learning" , 15 , "I001" , 1200 ,"Data Science" , 3.9);
insert into Course values ("C007" , "Deep Learning" , 18 , "I002" , 1200 , "Data Science" , 4.7);

create table CourseRegistration(Registration_ID int primary key, Rollno varchar(4),Course_ID varchar(4), Fee_Status varchar(10) check(Fee_Status in ("Paid","Not Paid")), foreign key(Course_ID) references Course(Course_ID), foreign key(Rollno) references student(Rollno));
insert into CourseRegistration values (1 , "S001" , "C003" , "Paid");
insert into CourseRegistration values (2 , "S002" , "C002" , "Paid");
insert into CourseRegistration values (3 , "S003" , "C004" , "Not Paid");
insert into CourseRegistration values (4 , "S004" , "C004" , "Paid");
insert into CourseRegistration values (5 , "S005" , "C001" , "Not Paid");
insert into CourseRegistration values (6 , "S006" , "C005" , "Paid");

create table result(Rollno varchar(4), Course_ID varchar(4), Grade_Obtained varchar(4) check(Grade_Obtained in ("A+","A","B+","B","C+","C")));
insert into Result values ("S001" , "C003" , "A+");
insert into Result values ("S002" , "C002" , "A");
insert into Result values ("S004" , "C004" , "A");
insert into Result values ("S006" , "C005" , "A+");