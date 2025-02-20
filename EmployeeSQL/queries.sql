-- 1. List the following details of each employee: employee number, last name, 
-- first name, gender, and salary.

SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
inner JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY emp_no ASC;

-- 2. List employees who were hired in 1986.
SELECT first_name, last_name
FROM employees
WHERE CAST(hire_date AS VARCHAR) LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, e.hire_date, de.to_date
FROM (((departments AS d
	   INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no)
	  INNER JOIN employees AS e ON dm.emp_no= e.emp_no)
	 INNER JOIN dept_emp AS de ON e.emp_no=de.emp_no)
	 

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((departments AS d
	  INNER JOIN dept_emp AS de ON d.dept_no=de.dept_no)
	 INNER JOIN employees AS e ON de.emp_no=e.emp_no);

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name= 'Hercules' and last_name LIKE 'B%'

-- 6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((departments AS d
	  INNER JOIN dept_emp AS de ON d.dept_no=de.dept_no)
	 INNER JOIN employees AS e ON de.emp_no=e.emp_no)
	 WHERE dept_name='Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((departments AS d
	  INNER JOIN dept_emp AS de ON d.dept_no=de.dept_no)
	 INNER JOIN employees AS e ON de.emp_no=e.emp_no)
	 WHERE dept_name='Sales' OR dept_name='Development'
	 

-- 8. In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT COUNT(emp_no), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(emp_no) DESC;

	 

	 
	 



SELECT * FROM dept_emp

SELECT * FROM employees

SELECT* FROM departments
