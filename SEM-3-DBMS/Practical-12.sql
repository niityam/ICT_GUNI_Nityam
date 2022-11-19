create database practical12;
use practical12;

CREATE TABLE `db_prac11` (
  `EMPLOYEE_ID` varchar(11) DEFAULT NULL,
  `FIRST_NAME` varchar(10) DEFAULT NULL,
  `LAST_NAME` varchar(9) DEFAULT NULL,
  `EMAIL` varchar(8) DEFAULT NULL,
  `PHONE_NUMBER` varchar(12) DEFAULT NULL,
  `HIRE_DATE` varchar(10) DEFAULT NULL,
  `JOB_ID` varchar(10) DEFAULT NULL,
  `SALARY` varchar(6) DEFAULT NULL,
  `MANAGER_ID` varchar(10) DEFAULT NULL,
  `DEPARTMENT_ID` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_prac11`
--

INSERT INTO `db_prac11` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('', '', '', '', '', '', '', '', '', ''),
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000', '100', '90'),
('102', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000', '102', '60'),
('103', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000', '103', '60'),
('104', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800', '103', '60'),
('105', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800', '103', '60'),
('106', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200', '103', '60'),
('107', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000', '101', '100'),
('108', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000', '108', '100'),
('109', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200', '108', '100'),
('110', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700', '108', '100'),
('112', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900', '108', '100'),
('113', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000', '100', '30'),
('114', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100', '114', '30');

SET SQL_SAFE_UPDATES = 0;

-- Write a query to update the portion of the phone_number in the db_prac11 table, within the phone number the substring '124' will be replaced by '999'.
UPDATE db_prac11 SET phone_number = REPLACE(phone_number, '124', '999');

-- Write a query to get the details of the employees where the length of the first name is greater than or equal to 8.
SELECT * FROM db_prac11 WHERE LENGTH(first_name) >= 8;

-- Write a query to append '@example.com' to the email field.
SELECT CONCAT(email, '@example.com') AS email FROM db_prac11;

-- Write a query to display all employees first names in upper case.
SELECT UPPER(first_name) AS first_name FROM db_prac11;

-- Write a query to extract the last 4 characters of phone numbers.
SELECT RIGHT(phone_number, 4) AS phone_number FROM db_prac11;

-- Write a query to display the length of first name for employees where the last name contains character 'c' after 2nd position.
SELECT LENGTH(first_name) AS first_name FROM db_prac11 WHERE last_name LIKE '_c%';

-- Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names.
SELECT first_name, LENGTH(first_name) AS length_of_first_name FROM db_prac11 WHERE first_name LIKE 'A%' OR first_name LIKE 'J%' OR first_name LIKE 'M%' ORDER BY first_name;

-- Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.
SELECT first_name, LPAD(salary, 10, '$') AS salary FROM db_prac11;

-- Write a query to get the given date in the following format. Output : OCTOBER 18, 2021
SELECT DATE_FORMAT('2021-10-18', '%M %d, %Y');

-- Write a query to extract the year from the system’s current date.
SELECT YEAR(CURDATE());

-- Write a query to get the years in which more than 10 employees joined.
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS no_of_employees FROM db_prac11 GROUP BY hire_year HAVING no_of_employees > 10;

-- Write a query to get employee ID, last name, and date of first salary of the employees.
SELECT employee_id, last_name, hire_date FROM db_prac11 GROUP BY employee_id;

-- Write a query to get first name, hire date and experience of the employees.
SELECT first_name, hire_date, DATEDIFF(CURDATE(), hire_date) AS experience FROM db_prac11;

