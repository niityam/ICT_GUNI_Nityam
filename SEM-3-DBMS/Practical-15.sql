create database prac_15;
use prac_15;
SET GLOBAL log_bin_trust_function_creators = 1;
CREATE TABLE `student` (
  `rollno` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL
) ;

insert into student values(1,"Amal",80,"CS");
insert into student values(2,"Jeel",91,"CS");
insert into student values(3,"Harsh",90,"CS");
insert into student values(4,"Srijit",85,"CS");
insert into student values(5,"Kirtan",85,"CBA");
insert into student values(6,"Yash",82,"CBA");
insert into student values(7,"Rahi",92,"CBA");
insert into student values(8,"Akshay",85,"BDA");
insert into student values(9,"Rishabh",82,"BDA");

-- Create a function findmax() which returns max number from given two number.
CREATE FUNCTION `findmax`(a INT, b INT) RETURNS INT
BEGIN
DECLARE max INT;
IF a > b THEN
SET max = a;
ELSE
SET max = b;
END IF;
RETURN max;
END

-- Create a function findgrade() Calculate grade based on marks and returns grade.
CREATE FUNCTION `findgrade`(marks INT) RETURNS VARCHAR(2)
BEGIN
DECLARE grade VARCHAR(2);
IF marks >= 90 THEN
SET grade = 'A+';
ELSEIF marks >= 80 THEN
SET grade = 'A';
ELSEIF marks >= 70 THEN
SET grade = 'B+';
ELSEIF marks >= 60 THEN
SET grade = 'B';
ELSEIF marks >= 50 THEN
SET grade = 'C+';
ELSEIF marks >= 40 THEN
SET grade = 'C';
ELSE
SET grade = 'F';
END IF;
RETURN grade;
END

-- Create function which returns Percentage of student from student table based on rollno.
CREATE FUNCTION `findpercentage`(rno INT) RETURNS INT
BEGIN
DECLARE per INT;
SELECT percentage INTO per FROM student WHERE rollno = rno;
RETURN per;
END

-- Create function which returns number of student from student table based on branch.
create function `findcount`(bran varchar(30)) returns int
BEGIN
DECLARE count int;
SELECT count(*) INTO count FROM student WHERE branch = bran;
RETURN count;
END

-- Create a function that returns yesterday's date.
CREATE FUNCTION `yesterday`() RETURNS DATE
BEGIN
DECLARE ydate DATE;
SET ydate = DATE_SUB(CURDATE(), INTERVAL 1 DAY);
RETURN ydate;
END

-- Create a function that returns tomorrow's date.
CREATE FUNCTION `tomorrow`() RETURNS DATE
BEGIN
DECLARE tdate DATE;
SET tdate = DATE_ADD(CURDATE(), INTERVAL 1 DAY);
RETURN tdate;
END

-- Create a function that Calculate number of days between two date and returns it .
CREATE FUNCTION `finddays`(d1 DATE, d2 DATE) RETURNS INT
BEGIN
DECLARE days INT;
SET days = DATEDIFF(d1, d2);
RETURN days;
END

-- Create a function that Calculate number of days between today and your birthdate returns it.
CREATE FUNCTION `findage`() RETURNS INT
BEGIN
DECLARE age INT;
SET age = DATEDIFF(CURDATE(), '2003-07-11');
RETURN age;
END

-- Create a function that Calculate years From Date Of Birth and returns age.
CREATE FUNCTION `findageyear`() RETURNS INT
BEGIN
DECLARE age INT;
SET age = DATEDIFF(CURDATE(), '2003-07-11');
set age = age / 365;
RETURN age;
END
