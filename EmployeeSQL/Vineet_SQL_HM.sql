--1

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees as e
INNER JOIN salaries AS s ON
e.emp_no=s.emp_no;

--2

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3
SELECT d.dept_no, d.dept_name, dm.emp_no as "Manager Emp_no", e.last_name, e.first_name
FROM departments as d
JOIN dept_manager as dm 
ON d.dept_no = dm.dept_no
JOIN employees as e 
ON dm.emp_no = e.emp_no;

--4
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name as "Department Name"
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no;

--5
SELECT first_name, last_name, gender
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--6
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--7
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
ON de.emp_no = e.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--8
SELECT last_name,
COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
