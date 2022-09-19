-- 7th Practical
create database nityam;
use nityam;
--
-- Database: `mydb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company`, `city`) VALUES
('Infosys', 'Bangalore'),
('TCS', 'Pune'),
('Microsoft', 'Hydrabad');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ename` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `Department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ename`, `city`, `Department`) VALUES
('Dhruv', 'Bangalore ', 'Research'),
('Harsh', 'Bangalore ', 'Sales'),
('Dhyan', 'Bangalore ', 'Marketing'),
('Avani', 'Bangalore ', 'Developer'),
('Kajal', 'hydrabad', 'Sales'),
('Meet', 'hydrabad', 'Account'),
('Khushi', 'hydrabad', 'Sales'),
('Dev', 'hydrabad', 'Developer'),
('Harshil', 'hydrabad', 'Research'),
('Ankit', 'pune', 'Sales'),
('Rohit', 'pune', 'Account'),
('Rahul', 'pune', 'Research'),
('Jinay', 'pune', 'Developer'),
('Ankur', 'hydrabad', 'Marketing'),
('Anuj', 'Bangalore ', 'Research'),
('Urmik', 'hydrabad', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `ename` varchar(20) NOT NULL,
  `company` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`ename`, `company`, `salary`) VALUES
('raj', 'Microsoft', 70000),
('Dhruv', 'TCS', 70000),
('Harsh', 'TCS', 50000),
('Dhyan', 'Microsoft', 80000),
('Avani', 'Infosys', 50000),
('Kajal', 'Infosys', 40000),
('Meet', 'Infosys', 60000),
('Khushi', 'Microsoft', 60000),
('Dev', 'Infosys', 50000),
('Harshil', 'TCS', 40000),
('Ankit', 'TCS', 40000),
('Rohit', 'TCS', 50000),
('Rahul', 'Microsoft', 50000),
('Jinay', 'Infosys', 40000),
('Ankur', 'Infosys', 40000),
('Anuj', 'TCS', 40000),
('Urmik', 'TCS', 50000);

-- --------------------------------------------------------------------------------------------
show tables;
select * from company;
select * from employee;
select * from works;
-- --------- remove above
-- 1
Select employee.ename,employee.department,works.company,works.salary from employee inner join works on employee.ename=works.ename;

-- 2
select works.ename, works.company, works.salary, employee.city, employee.Department from works inner join employee on works.ename = employee.ename where works.company = "Microsoft";

-- 3
select * from works where salary>55000 && company = "Microsoft";

-- 4
select works.ename, works.company, works.salary, employee.Department from works inner join employee on  employee.ename = works.ename where works.salary > 50000 ;

-- 5
select ename from employee where city = 'Bangalore ';

-- 6
select employee.ename from employee inner join works on works.ename = employee.ename where city = 'Bangalore ' and salary<50000;

-- 7
select avg(works.salary) from employee inner join works on works.ename = employee.ename where employee.Department = "Account";

-- 8
select avg(works.salary) from employee inner join works on works.ename = employee.ename where employee.city = "pune";

-- 9
select employee.ename, works.salary from employee inner join works on works.ename = employee.ename where employee.city = "hydrabad";

-- 10
select employee.ename from employee inner join works on works.ename = employee.ename inner join company on company.company = works.company where company.city= "pune";

-- 11
select employee.ename, works.company, employee.city from employee inner join works on works.ename = employee.ename where employee.Department= "Sales";

-- 12
select employee.Department, avg(works.salary) from employee inner join works on works.ename = employee.ename group by employee.Department;

-- 13
select employee.city, avg(works.salary) from employee inner join works on works.ename = employee.ename group by employee.city;

-- 14
select works.company, count(employee.Department) from employee inner join works on works.ename = employee.ename where works.company = "Infosys";

-- 15
select employee.ename, works.salary from employee inner join works on works.ename = employee.ename inner join company on company.company = works.company where company.city= "pune";

-- 16
select employee.Department, max(works.salary) from employee inner join works on works.ename = employee.ename group by employee.Department;

-- 17
select employee.ename from employee inner join works on works.ename = employee.ename inner join company on company.company = works.company where company.city= 'Bangalore' and employee.city = 'Bangalore ';

-- 18
select count(employee.ename) from employee inner join works on works.ename = employee.ename inner join company on company.company = works.company where employee.city= 'Bangalore ' and works.company= 'TCS';
