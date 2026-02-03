-- Q1. Create a New Database and  Table for Employees
-- Task: Create a new database named company_db and Create a table named employees with the following
-- answer:
               create database company_db;
               USE company_db;
                   CREATE TABLE employees (
                 employee_id INT PRIMARY KEY,
                 first_name VARCHAR(50),
                 last_name VARCHAR(50),
                 department VARCHAR(50),
                 salary INT,
                hire_date DATE
                   );
			
-- Q2. Insert Data into Employees Table
-- Task: Insert the following sample records into the employees table.
-- Answer: 
            INSERT INTO employees (employee_id, first_name, last_name, department, salary, hire_date)
                   VALUES
                        (101, 'Amit', 'Sharma', 'HR', 50000, '2020-01-15'),
                        (102, 'Riya', 'Kapoor', 'Sales', 75000, '2019-03-22'),
                        (103, 'Raj', 'Mehta', 'IT', 90000, '2018-07-11'),
                        (104, 'Neha', 'Verma', 'IT', 85000, '2021-09-01'),
                        (105, 'Arjun', 'Singh', 'Finance', 60000, '2022-02-10');
-- Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
-- Hint: Use the order by clause on the salary column.
-- Answer :
                 SELECT * FROM employees ORDER BY salary ASC;
                 
-- Q4: Show Employees Sorted by Department (A–Z) and Salary (High → Low)
-- Answer:
              SELECT * FROM employees ORDER BY department ASC, salary DESC;
              
              
-- Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
-- Answer:
                 SELECT * FROM employees WHERE department = 'IT' ORDER BY hire_date DESC;
                 
-- Q6. Create and Populate a Sales Table
-- Task: Create a table sales to track sales data:
-- Answer:
               CREATE TABLE sales (
			   sale_id INT PRIMARY KEY,
			   customer_name VARCHAR(50),
               amount DECIMAL(10,2),
               sale_date DATE
                );
                INSERT INTO sales (sale_id, customer_name, amount, sale_date)VALUES (1, 'Aditi', 1500, '2024-08-01'),
																					(2, 'Rohan', 2200, '2024-08-03'),
																					(3, 'Aditi', 3500, '2024-09-05'),
																					(4, 'Meena', 2700, '2024-09-15'),
																					(5, 'Rohan', 4500, '2024-09-25');

                
-- Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
-- Hint:Use order by amount desc
-- Answer:
               SELECT * FROM sales ORDER BY amount DESC;
               
-- Q8. Show All Sales Made by Customer “Aditi”
-- Hint: Use Where Customer_name = "Aditi"
-- Answer:
               SELECT * FROM sales WHERE customer_name = 'Aditi';
               
-- Q9. What is the Difference Between a Primary Key and a Foreign Key?
-- Answer : A Primary Key uniquely identifies each record in a table and does not allow NULL or duplicate values.
-- A Foreign Key is used to establish a relationship between two tables by referencing the Primary Key of another table.

-- Q10. What Are Constraints in SQL and Why Are They Used?
/* Answer : Constraints in SQL are rules applied to table columns to control the type of data that can be stored in a database.
 They help maintain data accuracy, consistency, and integrity.

 Why Are Constraints Used?
   1.To prevent invalid data from being inserted into tables
   2.To enforce business rules
   3.To maintain data integrity and relationships between tables
   4.To reduce errors in the database 
   | Constraint         | Purpose                                 |
| ------------------ | --------------------------------------- |
| PRIMARY KEY        | Uniquely identifies each record         |
| FOREIGN KEY        | Links tables and enforces relationships |
| NOT NULL           | Prevents NULL values                    |
| UNIQUE             | Ensures all values are unique           |
| CHECK              | Enforces a condition on values          |
| DEFAULT            | Assigns a default value                 |

*/
   














