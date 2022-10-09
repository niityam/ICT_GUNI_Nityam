-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 20, 2021 at 12:13 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pract12`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--
CREATE DATABASE n_db;
use n_db;
CREATE TABLE `department` (
  `deptno` int(11) NOT NULL,
  `deptname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--
INSERT INTO `department` (`deptno`, `deptname`) VALUES
(101, 'Account'),
(102, 'Sales'),
(103, 'Marketing'),
(104, 'Research'),
(105, 'Purchase'),
(106, 'operations');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL,
  `deptno` int(11) NOT NULL,
  `pno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empno`, `name`, `city`, `salary`, `deptno`, `pno`) VALUES
(1, 'AASHRI SHARMA', 'Ahmedabad', 42639, 104, 1001),
(2, 'AVANI GAJJAR', 'Baroda', 42251, 104, 1004),
(3, 'BHAVSAR NAITIK UTTAM', 'Ahmedabad', 35770, 104, 1002),
(4, 'GAJJAR MANUSHI JIGAR', 'Ahmedabad', 36876, 103, 1003),
(5, 'KAMLI HEM MANOJ', 'Mumbai', 34739, 102, 1002),
(6, 'PARIKH HET DARSHAN', 'Baroda', 49317, 104, 1003),
(7, 'PATEL NRUPABEN PRAVI', 'Ahmedabad', 37063, 101, 1005),
(8, 'SONI AARYAN RAJENDRA', 'Ahmedabad', 32727, 104, 1005),
(9, 'AKOLA YASHVI CHIMANB', 'Ahmedabad', 49425, 101, 1004),
(10, 'PATEL NEELKUMAR ALPE', 'Mumbai', 46006, 102, 1003),
(11, 'PATEL RAJVI MANISHBH', 'Mumbai', 48155, 101, 1001),
(12, 'PATEL TANISHKKUMAR A', 'Baroda', 40566, 102, 1002),
(13, 'PATEL UJJVAL KIRANBH', 'Baroda', 42228, 104, 1005),
(14, 'PATEL AKSHAR', 'Baroda', 41663, 104, 1001),
(15, 'PATEL DEEPKUMAR NAVA', 'Mumbai', 43354, 104, 1003),
(16, 'PATEL DHRUV MANOJKUM', 'Mumbai', 45882, 104, 1004),
(17, 'PATEL HARSH JAGDISHB', 'Ahmedabad', 31788, 101, 1002),
(18, 'PATEL HARSHIL RAMANL', 'Ahmedabad', 34114, 101, 1001),
(19, 'PATEL PARTH KALUBHAI', 'Ahmedabad', 38811, 101, 1003),
(20, 'PATEL SARJAN SHASHIK', 'Mumbai', 48408, 101, 1003),
(21, 'ARCHAN M VYAS', 'Mumbai', 47057, 101, 1003),
(22, 'DHARMAGNA VYAS', 'Mumbai', 35676, 101, 1005),
(23, 'PUROHIT DEVANSHIBEN ', 'Mumbai', 39840, 102, 1004),
(24, 'DEVARSH MISTRY', 'Ahmedabad', 32724, 103, 1001),
(25, 'RUSHI DEVENBHAI GOKA', 'Baroda', 48729, 103, 1003);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pno` int(11) NOT NULL,
  `ProjectName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pno`, `ProjectName`) VALUES
(1001, 'Project1'),
(1002, 'Project2'),
(1003, 'Project3'),
(1004, 'Project4'),
(1005, 'Project5'),
(1006, 'Project6');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- 1
select name from employee where (deptno, salary) in (select deptno, max(salary) from employee group by deptno);

-- 2
select * from employee where (deptno, salary) in (select deptno, salary from employee where salary > (select avg(salary) from employee));

-- 3
select deptname from department where (deptno) in (select deptno from employee where empno = 10);

-- 4
select * from employee where (deptno) in (select deptno from department where deptname = "Marketing" or deptname = "Research");

-- 5
select name from employee where (deptno) in (select deptno from employee where name = "PATEL AKSHAR");

-- 6
select name from employee where (pno) in (select pno from project where ProjectName != "Project1" and ProjectName != "Project2" );

-- 7
SET SQL_SAFE_UPDATES = 0;
update employee set salary = salary*1.25 where (deptno) in (select deptno from department where deptname = "Research");

-- 8
select deptname from department where (deptno) not in (select deptno from employee group by deptno);

-- 9
select deptname from department where (deptno) in (select deptno from employee group by deptno having count(*)>1);

-- 10
select ProjectName from project where (pno) not in (select pno from employee group by pno);

-- 11 
select ProjectName from project where (pno) in (select pno from employee group by pno having count(*)>1);

-- 12
select name from employee where (pno) in (select pno from project where ProjectName = "Project1" or ProjectName = "Project2") and city = "Ahmedabad";

-- 13
select * from employee where (deptno) in (select deptno from department where deptname = "Sales" or deptname = "Account") and salary > 40000;

-- 14
select max(salary) from employee where salary < (select max(salary) from employee);

-- 15
select name, salary from employee where salary = (select max(salary) from employee where salary < (select max(salary) from employee));
