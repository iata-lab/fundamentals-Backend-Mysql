CREATE TABLE users(
id INT AUTO_INCREMENT,
   	first_name VARCHAR(100),
   	last_name VARCHAR(100),
   	email VARCHAR(50),
   	password VARCHAR(20),
   	register_date DATETIME,
   PRIMARY KEY(id)
);









-- 1.1.1 Create a database
CREATE DATABASE my_company_database;

-- Use the created database
USE my_company_database;

-- Create the employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F') NOT NULL
);

-- 1.1.2 Add new columns to the created table
ALTER TABLE employees
ADD COLUMN salary INT NOT NULL,
ADD COLUMN title VARCHAR(100) NOT NULL,
ADD COLUMN title_date DATE NOT NULL;

-- 1.2.1 INSERT DATA
INSERT INTO employees (birth_date, first_name, last_name, gender, salary, title, title_date) VALUES
('1990-01-01', 'John', 'Doe', 'M', 25000, 'Engineer', '2020-01-01'),
('1985-05-15', 'Jane', 'Smith', 'F', 30000, 'Manager', '2020-05-15'),
('1992-07-20', 'John', 'Brown', 'M', 18000, 'Technician', '2019-07-20'),
('1995-03-10', 'Alice', 'Johnson', 'F', 22000, 'Analyst', '2020-03-10'),
('1988-11-25', 'Bob', 'White', 'M', 5000, 'Clerk', '2018-11-25'),
('1993-09-12', 'John', 'Doe', 'M', 40000, 'Engineer', '2020-09-12'),
('1991-06-30', 'Emily', 'Davis', 'F', 15000, 'Designer', '2019-06-30'),
('1987-02-18', 'Michael', 'Taylor', 'M', 35000, 'Consultant', '2020-02-18'),
('1994-08-22', 'Sarah', 'Wilson', 'F', 12000, 'Assistant', '2019-08-22'),
('1990-04-05', 'Chris', 'Brown', 'M', 28000, 'Developer', '2020-04-05'),
('1989-10-10', 'Anna', 'Moore', 'F', 45000, 'Manager', '2020-10-10'),
('1996-12-01', 'David', 'Clark', 'M', 17000, 'Technician', '2019-12-01'),
('1992-03-25', 'Sophia', 'Hall', 'F', 14000, 'Analyst', '2018-03-25'),
('1986-07-07', 'James', 'Adams', 'M', 50000, 'Director', '2020-07-07'),
('1997-01-15', 'Olivia', 'Scott', 'F', 13000, 'Intern', '2019-01-15');

-- 1.2.2 UPDATING DATA
-- Change the name of an employee based on first name, last name, and birth date
UPDATE employees
SET first_name = 'Jonathan'
WHERE first_name = 'John' AND last_name = 'Doe' AND birth_date = '1990-01-01';

-- 1.2.3 GET DATA
-- Select all employees with a salary higher than 20,000
SELECT * FROM employees WHERE salary > 20000;

-- Select all employees with a salary less than 10,000
SELECT * FROM employees WHERE salary < 10000;

-- Select all employees with a salary between 14,000 and 50,000
SELECT * FROM employees WHERE salary BETWEEN 14000 AND 50000;

-- Select the total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Select the titles of the year 2019
SELECT DISTINCT title FROM employees WHERE YEAR(title_date) = 2019;

-- Select only the name of the employees and have them in upper case letters
SELECT UPPER(first_name) AS upper_case_name FROM employees;

-- Select the name of the employees without repeating any of them
SELECT DISTINCT first_name FROM employees;

-- 1.2.4 DELETE DATA
-- Delete the employee with id = 5
DELETE FROM employees WHERE id = 5;

-- Remove all employees with a salary higher than 20,000
DELETE FROM employees WHERE salary > 20000;
