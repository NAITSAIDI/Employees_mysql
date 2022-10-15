USE employees;

/* Use the WHERE statement */
SELECT * FROM employees WHERE first_name = 'Denis';
SELECT * FROM employees WHERE first_name= 'Elvis';
SELECT * FROM employees WHERE first_name= 'Kellie' and gender = 'F';
SELECT * FROM employees where first_name= 'Aruna' OR first_name= 'Kellie';
SELECT * FROM employees where gender = 'F' AND (first_name = 'Aruna' OR first_name= 'Kellie');
SELECT * FROM employees where first_name IN( 'Cathie', 'Mark', 'Nathan');
SELECT * FROM employees where gender= 'F' and (first_name= 'Kellie' OR first_name='Aruna');
SELECT * FROM employees where first_name IN( 'Denis', 'Elvis');
SELECT * FROM employees where first_name NOT IN( 'Mark', 'John', 'David');
SELECT * From employees where first_name LIKE ('%ar');
SELECT * From employees where first_name NOT LIKE ('%Mar%');
SELECT * From employees where first_name  LIKE ('Mar%');
SELECT * From employees where hire_date like ('2000%');
SELECT * From employees where emp_no like('1000_');
/* Wildcarad (* % _) */ 
Select * FROM employees where first_name Like ('%Jack%');
Select * FROM employees where first_name NOT Like ('%Jack%');
Select * FROM employees where hire_date BETWEEN ("1990-01-01") AND ('2000-01-01');
Select * FROM employees where hire_date NOT BETWEEN ("1990-01-01") AND ('2000-01-01');
Select * FROM SALARIES where salary BETWEEN ('66000') AND ('70000');
Select * FROM employees where emp_no NOT BETWEEN ('10004') and ('10012');
Select * FROM departments WHERE dept_no BETWEEN ('d003') AND ('d006'); 
/* Is Null and Is NOT NULL section*/
SELECT * FROM employees where first_name is NULL;
SELECT dept_name FROM departments WHERE dept_no IS NOT NULL; 
SELECT * FROM employees WHERE first_name != 'Mark';
SELECT * FROM employees WHERE hire_date >= '2000-01-01';
/* Retrieve a list with data about all female employees who were hired in the year 2000 or after*/
SELECT * FROM employees WHERE gender = 'F' AND hire_date >='2000-01-01';
/*Extract a list with all employees’ salaries higher than $150,000 per annum*/

SELECT * FROM EMPLOYEES.SALARIES  WHERE salary > '150000';
SELECT * FROM salaries WHERE salary > '150000';
/* Obtain a list with all different “hire dates” from the “employees” table*/ 
SELECT distinct hire_date FROM employees LIMIT 1000;

/*Aggregate Function (COUNT ....*/

SELECT COUNT(emp_no) 
FROM employees;
SELECT COUNT(DISTINCT first_name) 
FROM employees;

/* How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?*/
SELECT COUNT(salary) FROM employees.salaries where salary >= 100000;

SELECT

    COUNT(*)

FROM

    salaries

WHERE

    salary >= 100000;

/* How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise.*/
SELECT COUNT(emp_no) FROM EMPLOYEES.dept_manager;
SELECT

    COUNT(*)

FROM

    dept_manager;
    
/* 107 Order by*/ 
Select * FROM employees ORDER BY emp_no DESC;
Select * FROM employees ORDER BY  first_name, last_name DESC;
/* Select all data from the “employees” table, ordering it by “hire date” in descending order*/ 
Select * FROM employees ORDER BY hire_date DESC;
/* Group By*/ 
 
 SELECT first_name FROM employees GROUP BY first_name;
 SELECT first_name, count(first_name) AS names_count from employees group by first_name order by first_name desc;
/* Write a query that obtains two columns. The first column must contain annual salaries higher than 80,000 dollars.*/
/*The second column, renamed to “emps_with_same_salary”, must show the number of employees contracted to that salary.*/
/* Lastly, sort the output by the first column.*/
Select * FROM employees;
SELECT salary, count(salary) As emps_with_same_salary FROM salaries where salary > 80000 GROUP BY salary order by salary;
SELECT salary, COUNT(emp_no) AS emps_with_same_salary FROM salaries WHERE salary > 80000 GROUP BY salary ORDER BY salary;
/* USE having the same as where, but should be used whenever there are aggregate functions iun the query*/ 
SELECT first_name, count(first_name) AS names_count from employees group by first_name HAVING COUNT(first_name) >250 order by first_name desc;
/* Select all employees whose average salary is higher than $120,000 per annum.*/ 
Select * FROM employees.salaries HAVING salary > 120000;  # where could have been 
SELECT emp_no, AVR(salary),FROM salaries GROUP BY emp_no HAVING AVG(salary) > 120000 ORDER BY emp_no;

 





