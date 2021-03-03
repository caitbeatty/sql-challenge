
--List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
LEFT JOIN salaries AS s 
ON s.emp_no = e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary, e.hire_date
FROM employees AS e
LEFT JOIN salaries AS s 
ON s.emp_no = e.emp_no
WHERE hire_date  >= '1986-01-01' and hire_date <= '1986-12-31';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m. emp_no, e. last_name, e.first_name 
FROM departments AS d
INNER JOIN dept_manager AS m 
ON d.dept_no = m.dept_no
INNER JOIN employees as e 
on m.emp_no = e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e. emp_no, e. last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp  
ON e.emp_no = dept_emp.emp_no
INNER JOIN departments as d 
on dept_emp.dept_no = d.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name  = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp  
ON e.emp_no = dept_emp.emp_no
INNER JOIN departments as d 
on dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp  
ON e.emp_no = dept_emp.emp_no
INNER JOIN departments as d 
on dept_emp.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
Select e.last_name, count(e.last_name) AS "last name count"
From employees as e
Group By e.last_name
Order by "last name count" DESC;
