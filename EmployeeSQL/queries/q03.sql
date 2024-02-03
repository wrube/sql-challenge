-- List the manager of each department along with their department number, department name, 
-- employee number, last name, and first name.

SELECT d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name
FROM departments_manager AS dm
INNER JOIN employees AS e
ON dm.emp_no = e.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no;