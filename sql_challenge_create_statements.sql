--Create statements

--Titles, Employees, Departments, Salaries, Dept Manager, Department Emp,

CREATE TABLE Title
(
Title_id VARCHAR PRIMARY KEY,
Title VARCHAR NOT NULL
);

CREATE TABLE Employees
(
Emp_no INTEGER PRIMARY KEY,
Emp_title_id VARCHAR,
	FOREIGN KEY (Emp_title_id) REFERENCES title(title_id),
Birth_date DATE NOT NULL, 
First_name VARCHAR NOT NULL,
Last_name VARCHAR NOT NULL,
SEX VARCHAR NOT NULL, 
Hire_date DATE NOT NULL
);

CREATE TABLE Departments
(
Dept_no VARCHAR PRIMARY KEY,
Dept_name VARCHAR NOT NULL
);


CREATE TABLE Dept_manager
(
Dept_no VARCHAR,
	FOREIGN KEY (Dept_no) REFERENCES departments(dept_no),
Emp_no INTEGER, 
	FOREIGN KEY (Emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE Dept_emp
(
Emp_no INTEGER, 
	FOREIGN KEY (Emp_no) REFERENCES employees(emp_no),
Dept_no VARCHAR,
	FOREIGN KEY (Dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE Salaries
(
Emp_no INTEGER,
	FOREIGN KEY (Emp_no) REFERENCES employees(emp_no),
Salary INTEGER 
);
