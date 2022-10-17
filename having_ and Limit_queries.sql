Use employees;
SELECT first_name, COUNT(first_name) AS names_count
from employees 
where hire_date > '1991-01-01' 
group by first_name
having COUNT(first_name) < 200
order by first_name desc;

/* Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.*/
SELECT emp_no, COUNT(emp_no) 
from dept_emp 
where from_date > '2000-01-01'
group by emp_no
having COUNT(from_date) > 1
order by emp_no;

/* Correction*/ 
SELECT

    emp_no

FROM

    dept_emp

WHERE

    from_date > '2000-01-01'

GROUP BY emp_no

HAVING COUNT(from_date) > 1

ORDER BY emp_no;

/* Limit*/ 

Select * from salaries

order by salary desc limit 10;

/* Select the first 100 rows from the ‘dept_emp’ table. */ 
Select * From dept_emp limit 100;
