CREATE TABLE Departments (dept_no, dept_name)
	dept_no NOT NULL Primary Key,
	dept_name int;



CREATE TABLE Dept_emp (emp_no, dept_no)
	emp_no int Primary Key
	dept_no int 
	Foreign Key (dept_no) references Departments(dept_no);

CREATE TABLE Dept_manager (dept_no, emp_no)
	dept_no int Primary Key,
	emp_no int
	Foriegn Key (emp_no) references Dept_emp(emp_no);

CREATE TABLE Employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
	emp_no PK int,
	emp_title_id varchar(50),
	birth_date varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	sex varchar(1),
	hire_date varchar(50);

CREATE TABLE Titles (title_id, title)
	title_id varchar(50) Primary Key,
	title varchar(50);

CREATE TABLE Salaries (emp_no, salary)
	emp_no int Primary Key,
	salary int;
