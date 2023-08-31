---Question 1:
select E.emp_no, E.last_name, E.first_name, E. sex, S.salaries
FROM Employees as E
INNER JOIN Salaries as S
on E.emp_no=S.emp_no;

---Question 2:
select first_nbame, last_name, hire_date
FROM Employees
WHERE hire_date LIKE "%86";

--Question 3:
select Dept_manager.dept_no, Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Dept_manager
INNER JOIN
Departments
on Dept_manager.dept_no=Departments.dept_no
INNER JOIN Employees
ON Dept_manager.emp_no=Employees.emp_no;

--Question 4:
select Dept_manager.dept_no, Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Dept_manager
INNER JOIN
Departments
on Dept_manager.dept_no=Departments.dept_no
INNER JOIN Employees
ON Dept_manager.emp_no=Employees.emp_no;

--Question 5:
select first_name, last_name, sex
FROM Employees
WHERE first_name="Hercules"
AND last_name LIKE "B%";

--Question 6:
select Employees.emp_no, Employees.last_name, Employees.first_name
FROM Dept_manager
INNER JOIN
Departments
on Dept_manager.dept_no=Departments.dept_no
INNER JOIN Employees
ON Dept_manager.emp_no=Employees.emp_no;
WHERE Departments.dept_name="Sales";

--Question 7:
select Employees.emp_no, Employees.last_name, Employees.first_name, Departments.department_name
FROM Dept_manager
INNER JOIN
Departments
on Dept_manager.dept_no=Departments.dept_no
INNER JOIN Employees
ON Dept_manager.emp_no=Employees.emp_no;
WHERE Departments.dept_name="Sales"
OR Departments.dept_name="Development";

--Question 8:
select last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY last_name DESC;