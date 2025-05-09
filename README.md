# fundamentals-Backend-Mysql




Introduction
MySQL is a relational database management system considered to be the most popular open source database in the world, especially for the web development environments we are interested in.




What are the main objectives of this project?
⦁ To understand what a relational database is.
⦁ To understand how queries are made to a database.
⦁ Understand how to interact with data stored in the database.






1.1. Create a database
Next, you will create a database. The goal of this project is to learn how to work in a database and make SQL queries.

1.1.1 Create a database

Create a database named my_company_database. The database should contain the following table:
employees. It will have the following fields:   
id
birth_date  
first_name
last_name   
gender     

1.1.2 Add new columns to the created table
Add 3 new columns to the table:
Column “salary
Column “title” column
Column “title_date”(date) column



1.2. Execute the following SQL queries

Next, you will need to perform the following SQL queries:

1.2.1 INSERT DATA

Insert at least 15 new employees:
At least 3 employees must have the same name.
The salaries of the employees must be in the range of
5000 and 50,000 and must vary between different genders.
All employees have a title.
At least 5 titles are 2020.

1.2.2 UPDATING DATA

⦁ Update the employees:
*If we do it from the terminal follow the statement as it is, if you are doing it with workbench update it by (primary_key)i.e. the unique value and in this case it will be the id.
⦁ Change the name of an employee. To do this, generate a query that affects only a certain employee based on their first name, last name and date of birth.
1.2.3 GET DATA

⦁ Select all employees with a salary higher than 20,000.
⦁ Select all employees with a salary less than 10,000.
⦁ Select all employees with a salary between 14,000 and 50,000.
⦁ Select the total number of employees.
⦁ Select the titles of the year 2019.
⦁ Select only the name of the employees and have them in upper case letters
⦁ Select the name of the employees without repeating any of them.
1.2.4 DELETE DATA

⦁ Delete the employee with id = 5
*If we do it from the terminal follow the statement as it is, if you are doing it with workbench update it by (primary_key)i.e. the unique value and in this case it will be the id.
⦁ Remove all employees with a salary higher than 20,000








Deliverables

Save the queries in a word, txt, readme, etc. document.
