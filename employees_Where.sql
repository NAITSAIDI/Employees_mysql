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