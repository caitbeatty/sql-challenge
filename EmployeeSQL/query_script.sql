--List the following details of each employee: employee number, last name, first name, sex, and salary
 select * from salaries

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s 
ON s.emp_no = e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary, e.hire_date
FROM employees AS e
LEFT JOIN salaries AS s 
ON s.emp_no = e.emp_no
WHERE e.hire_date LIKE '1986%';




