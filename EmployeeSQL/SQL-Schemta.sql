--Delete tables if exists
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


--Create employees table
CREATE TABLE employees (
	emp_no integer PRIMARY KEY,
	emp_title varchar(5),
	birth_date varchar(10),
	first_name varchar(30),
	last_name varchar(30),
	sex varchar(1),
	hire_date varchar(10),
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
	);
--Import CSV and check data
SELECT *
FROM employees;


--Create departments table
CREATE TABLE departments (
	dept_no varchar(4) UNIQUE,
	dept_name varchar(20)
	);
--Import CSV and check data
SELECT *
FROM departments;


--Create dept_emp table
CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no varchar(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
--Import CSV and check data
SELECT *
FROM dept_emp;


--Create dept_manager table
CREATE TABLE dept_manager (
	dept_no varchar(4) NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
--Import CSV and check data
SELECT *
FROM dept_manager;


--Create salaries table
CREATE TABLE salaries (
	emp_no integer NOT NULL,
	salary integer,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);
--Import CSV and check data
SELECT *
FROM salaries;


--Create titles table
CREATE TABLE titles (
	title_id varchar(5) UNIQUE,
	title varchar(20) UNIQUE
	);
--Import CSV and check data
SELECT *
FROM titles;
