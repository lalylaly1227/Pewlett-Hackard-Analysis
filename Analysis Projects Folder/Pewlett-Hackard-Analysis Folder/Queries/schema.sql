 SELECT * FROM retirement_info;
 
 SELECT first_name, last_name 
 INTO retirement_info 
 FROM employees 
 WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
 AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
 -- Number of employees retiring SELECT COUNT(first_name) FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
 -- Retirement eligibility SELECT first_name, last_name FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
 -- Retirement eligibility SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
 
 SELECT first_name, last_name FROM employees 
 WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';
 
 SELECT first_name, last_name FROM employees 
 WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
 
 SELECT first_name, last_name FROM employees 
 WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
 
 select * from departments;
 
 select * from titles;
 
 CREATE TABLE titles ( emp_no INT NOT NULL, title VARCHAR(50) NOT NULL, from_date DATE NOT NULL, to_date DATE, FOREIGN KEY (emp_no) REFERENCES employees (emp_no), PRIMARY KEY (emp_no, title, from_date) );
 
 drop table titles;
 
 select * from dept_employee;
 
 select * from departments;
 
 select * from titles;
 
 select * from salaries;
 
 select * from employees;
 
 select * from dept_manager;
 
 select * from dept_employee;
 
 DROP TABLE dept_employee; 
 
 CREATE TABLE dept_employee ( 
     emp_no INT NOT NULL, 
     dept_no VARCHAR(4) NOT NULL, 
     from_date DATE NOT NULL, 
     to_date DATE NOT NULL, 
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no), PRIMARY KEY (emp_no, dept_no) );
 
 SELECT * FROM dept_employee;
 
 SELECT * FROM salaries;
 
 SELECT * FROM employees;
 
 SELECT * FROM dept_manager;
 
 SELECT * FROM departments;
 
 CREATE TABLE dept_employee ( 
     dept_no VARCHAR(4) NOT NULL, 
     emp_no INT NOT NULL, 
     from_date DATE NOT NULL, 
     to_date DATE NOT NULL, 
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no), PRIMARY KEY (emp_no, dept_no) );
 
 CREATE TABLE titles ( 
     emp_no INT NOT NULL, 
     title VARCHAR NOT NULL, 
     from_date DATE NOT NULL, 
     to_date DATE NOT NULL, 
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
     PRIMARY KEY (emp_no) ); CREATE TABLE dept_employee ( dept_no VARCHAR(4) NOT NULL, emp_no INT NOT NULL, from_date DATE NOT NULL, to_date DATE NOT NULL, FOREIGN KEY (emp_no) REFERENCES employees (emp_no), FOREIGN KEY (dept_no) REFERENCES departments (dept_no), PRIMARY KEY (emp_no, dept_no) );
 
 --querying the database 
 SELECT * FROM departments;
 
 -querying the database 
 SELECT * FROM departments;
 
 -- Creating tables for PH-EmployeeDB 
 CREATE TABLE salaries ( 
     emp_no INT NOT NULL, 
     salary INT NOT NULL, 
     from_date DATE NOT NULL, 
     to_date DATE NOT NULL, 
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
     PRIMARY KEY (emp_no) );
 
 -- Creating tables for PH-EmployeeDB 
 CREATE TABLE dept_manager ( 
     dept_no VARCHAR(4) NOT NULL, 
     emp_no INT NOT NULL, 
     from_date DATE NOT NULL, 
     to_date DATE NOT NULL, 
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no), 
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no), PRIMARY KEY (emp_no, dept_no) );
 
 -- Creating tables for PH-EmployeeDB 
 CREATE TABLE employees ( 
     emp_no INT NOT NULL, 
     birth_date DATE NOT NULL, 
     first_name VARCHAR NOT NULL, 
     last_name VARCHAR NOT NULL, gender VARCHAR NOT NULL, 
     hire_date DATE NOT NULL, PRIMARY KEY (emp_no) );
 
 -- Creating tables for PH-EmployeeDB 
 CREATE TABLE departments ( 
     dept_no VARCHAR(4) NOT NULL, 
     dept_name VARCHAR(40) NOT NULL, 
     PRIMARY KEY (dept_no), UNIQUE (dept_name) ); 
     
CREATE TABLE employees ( 
    emp_no INT NOT NULL, 
    birth_date DATE NOT NULL, 
    first_name VARCHAR NOT NULL, 
    last_name VARCHAR NOT NULL, 
    gender VARCHAR NOT NULL, 
    hire_date DATE NOT NULL, 
    PRIMARY KEY (emp_no) );
 
 -- Creating tables for PH-EmployeeDB 
 CREATE TABLE departments ( 
     dept_no VARCHAR(4) NOT NULL, 
     dept_name VARCHAR(40) NOT NULL, 
     PRIMARY KEY (dept_no), UNIQUE (dept_name) );