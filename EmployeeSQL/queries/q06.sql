-- List each employee in the Sales department, 
-- including their employee number, last name, and first name.

SELECT e.emp_no, e.first_name, e.last_name
FROM departments_employee AS de
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';