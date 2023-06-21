--Inner join on salary and employees to show employee number, last name, first name, sex, and salary of each employee.
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
INNER JOIN Salaries ON
Salaries.emp_no=Employees.emp_no;

--Show first name, last name, and hire date for 1986 employees.
SELECT Employees.first_name, Employees.last_name,  Employees.hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31'
ORDER BY hire_date ASC;


--Show department managers along with their department and employees' info.
SELECT Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name 
FROM Dept_Manager
JOIN Employees ON
Dept_Manager.emp_no = Employees.emp_no
JOIN Departments ON
Dept_Manager.dept_no = Departments.dept_no;

--Show department and employee basic info for each employee.
SELECT Dept_Emp.dept_no, Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
JOIN Dept_Emp ON
Dept_Emp.emp_no = Employees.emp_no
JOIN departments ON
Dept_Emp.dept_no = Departments.dept_no;

--Show name and sex of all Hercules B. employees
SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY first_name ASC;

--Show all sales employees' names and ID numbers
SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Employees
JOIN Dept_Emp ON
Employees.emp_no = Dept_Emp.emp_no 
JOIN Departments ON
Departments.dept_no = Dept_Emp.dept_no
WHERE Departments.dept_name = 'Sales';

--Show all Sales and Development department employees' names and departments
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name 
FROM Employees
JOIN Dept_Emp ON
Employees.emp_no = Dept_Emp.emp_no 
JOIN Departments ON
Departments.dept_no = dept_emp.dept_no
WHERE Departments.dept_name = 'Sales' OR Departments.dept_name = 'Development';

--Show most common last names in company in descending order
SELECT last_name, count(emp_no) as sim_name
FROM Employees
GROUP BY last_name
ORDER BY sim_name DESC;