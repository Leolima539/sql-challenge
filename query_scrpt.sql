--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no =s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT (YEAR FROM hire_date) = 1986;

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT m.dept_no, m.emp_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager m
JOIN departments d ON m.dept_no=d.dept_no
JOIN employees e ON m.emp_no=e.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT m.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp m ON m.emp_no=e.emp_no
JOIN departments d ON d.dept_no=m.dept_no;


--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_emp m ON m.dept_no=d.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_emp m ON m.dept_no=d.dept_no
JOIN employees e ON e.emp_no = m.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

 SELECT last_name, COUNT(last_name)AS Frequency
 FROM employees
 GROUP BY last_name
 ORDER BY COUNT(last_name) DESC;



