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



