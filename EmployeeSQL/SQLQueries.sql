-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM EMPLOYEE e
LEFT JOIN SALARY s
ON e.emp_no = s.emp_no

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	e.hire_date
FROM EMPLOYEE e
WHERE YEAR(e.hire_date) = '1986'

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM EMPLOYEE e
LEFT JOIN DEPT_EMPLOYEE_MAP de
ON e.emp_no = s.emp_no
LEFT JOIN LU_DEPARTMENT d
ON de.dept_no = d.dept_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	e.last_name,
	e.first_name,
	e.sex
FROM EMPLOYEE e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM EMPLOYEE e
LEFT JOIN DEPT_EMPLOYEE_MAP de
ON e.emp_no = s.emp_no
LEFT JOIN LU_DEPARTMENT d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM EMPLOYEE e
LEFT JOIN DEPT_EMPLOYEE_MAP de
ON e.emp_no = s.emp_no
LEFT JOIN LU_DEPARTMENT d
ON de.dept_no = d.dept_no
-- WHERE d.dept_name IN ('Sales', 'Development') -- Employeed in either Sales or Development


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT 
	e.last_name,
	COUNT(last_name) AS 'Last_Name_Count'
FROM EMPLOYEE e
GROUP BY last_name
ORDER BY 'Last_Name_Count' DESC
