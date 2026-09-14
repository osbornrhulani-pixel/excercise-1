--- creating catalog 
CREATE CATALOG IF NOT EXISTS excercise1;
--- creating schema
CREATE SCHEMA IF NOT EXISTS excercise1.selecting;
--- creating a table 
CREATE TABLE IF NOT EXISTS excercise1.selecting.employees (
    id INT, 
    first_name STRING,
    last_name STRING,
    department STRING,
    salary INT,
     hire_date DATE,
     city STRING);
--- inserting data into table
INSERT INTO excercise1.selecting.employees VALUES 
(1, 'Alice', 'Green', 'IT', 70000, '2020-01-10', 'Johnnesburg'),
(2, 'Brian', 'Lee', 'HR', 45000, '2019-03-22', 'Cape Town'),
(3, 'Cathy', 'Zulu', 'Finance', 65000, '2018-07-18', 'Durban'),
(4, 'David', 'Mokoena', 'Marketing', 50000, '2021-11-05', 'Pretoria'),
(5, 'Eva', 'Naidoo', 'IT', 72000, '2017-09-30', 'Johannesburg');
---- Question 1: retrieve all records from the employees table
SELECT * FROM excercise1.selecting.employees;
---- question 2: find all departments
SELECT DISTINCT department 
FROM excercise1.selecting.employees;
---- question 3: retrieve first and last names ordered by salary descending
SELECT first_name, 
       last_name 
FROM excercise1.selecting.employees
ORDER BY salary DESC;
---- question 4: retrieve the top 3 highest paid employees 
SELECt id,
       first_name,
       last_name,
       salary
FROM excercise1.selecting.employees
ORDER BY salary DESC
LIMIT 3;
---- question 5: Find employees in the IT department
SELECT id,
       first_name,
       last_name,
       department
FROM excercise1.selecting.employees
WHERE department = 'IT';
---- question 6: find employees in finance with salary> 60000
SELECT id,
       first_name,
       last_name,
       department,
       salary
FROM excercise1.selecting.employees
WHERE department = 'Finance' AND salary > 60000;
---- question 7: find employees in HR or marketting 
SELECT id,
       first_name,
       last_name,
       department
FROM excercise1.selecting.employees
WHERE department = 'HR' OR department = 'Marketing';
---- question 8: find employees not in IT
SELECT id,
       first_name,
       last_name,
       department
FROM excercise1.selecting.employees
WHERE department != 'IT';
---- question 9: find employees in IT, HR, or finance using IN
SELECT id,
       first_name,
       last_name,
       department
FROM excercise1.selecting.employees
WHERE department IN ('IT', 'HR', 'Finance');
---- question 10: find employees in IT with salary> 65000 and city johannesburg
SELECT id,
       first_name,
       last_name,
       department,
       salary,
       city
FROM excercise1.selecting.employees
WHERE department = 'IT' AND salary > 65000 AND city = 'Johannesburg';

