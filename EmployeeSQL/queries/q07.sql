-- List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM departments_employee AS de
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';