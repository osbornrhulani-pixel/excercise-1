--- Creating catalog/database
CREATE CATALOG IF NOT EXISTS spar;
USE CATALOG spar;
--- creating schema
CREATE SCHEMA IF NOT EXISTS spar.profiles;
--- creating table
CREATE TABLE IF NOT EXISTS spar.profiles.employees (
id INT,
first_name STRING,
last_name STRING,
department String,
salary INT,
hire_date DATE,
city STRING 
);
--- inserting values
INSERT INTO spar.profiles.employees VALUES
(1, 'Alice', 'Green', 'IT', 70000, '2020-01-10', 'Johannesburg'),
(2, 'Brain', 'Lee', 'HR', 45000, '2019-03-22', 'Cape Town'),
(3,'Cathy', 'Zulu', 'Finance', 65000, '2018-07-18', 'Durban'),
(4, 'David', 'Mokoena', 'Marketing', 50000, '2021-11-05', 'Pretoria'), 
(5, 'Eva', 'Naidoo', 'IT', 72000, '2017-09-30', 'Johannesburg');

SELECT * 
FROM spar.profiles.employees;

--- distinct departments
SELECT DISTINCT department
FROM spar.profiles.employees;
--- first and last name ordered by salary descending
SELECT first_name,
      last_name
FROM spar.profiles.employees
ORDER BY salary DESC;      
--- top 3 paid employees
SELECT id,
       first_name,
       last_name,
       salary
FROM spar.profiles.employees
ORDER BY salary DESC       
LIMIT 3;

--- employees in IT department
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department = 'IT';
--- employees in finance with salary > 60000
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department = 'Finance' AND salary > 60000;
--- employees in HR or marketing
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department= 'HR' OR department= 'Marketing';
--- employees NOT in IT
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department != 'IT';
--- employees in IT, HR or Finance
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department IN ('IT', 'HR', 'Finance');
--- emmployees in IT, salary> 65000 and city = 'Johannesburg
SELECT id,
       first_name,
       last_name,
       department
FROM spar.profiles.employees
WHERE department = 'IT' AND salary > 65000 AND  city = 'Johannesburg';
