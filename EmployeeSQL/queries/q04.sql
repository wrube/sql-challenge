 -- List the department number for each employee along with that employee’s employee number, 
 -- last name, first name, and department name.
 
SELECT d.dept_no,  e.emp_no, e.first_name, e.last_name, d.dept_name
FROM departments_employee AS de
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no;