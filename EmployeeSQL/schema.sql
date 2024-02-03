

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(5) NOT NULL PRIMARY KEY UNIQUE,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL PRIMARY KEY UNIQUE,
    emp_title_id VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
	
	-- add a forign key constraint to the titles table
	CONSTRAINT fk_title FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE IF NOT EXISTS salaries
(
	--salary_id SERIAL NOT NULL  UNIQUE,
    emp_no INTEGER NOT NULL PRIMARY KEY UNIQUE,
    salary INTEGER NOT NULL,
	
	-- Create a foreign key to the employee number in employees table for 1-1 relationship
	CONSTRAINT fk_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)

);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(4) NOT NULL PRIMARY KEY UNIQUE,
    dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS departments_employee
(
	emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)	
);

CREATE TABLE IF NOT EXISTS departments_manager
(
    dept_no VARCHAR(4) NOT NULL,
    emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);


