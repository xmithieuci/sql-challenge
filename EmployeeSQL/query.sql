
--Query 1

SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM 
	Employees e
JOIN 
	Salaries s 
ON 
	e.emp_no = s.emp_no;

--Query 2

SELECT 
	first_name, 
	last_name, 
	hire_date
FROM 
	Employees
WHERE 
	hire_date 
BETWEEN 
	'1986-01-01' AND '1986-12-31';

--Query 3

SELECT 
    d.dept_no,
    d.dept_name,
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
	Departments d
JOIN 
	dept_manager dm 
ON 
	d.dept_no = dm.dept_no
JOIN 
	Employees e 
ON dm.emp_no = e.emp_no;

--Query 4

SELECT 
    de.dept_no,
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
	Dept_emp de
JOIN 
	Employees e 
ON 
	de.emp_no = e.emp_no
JOIN 
	Departments d 
ON 
	de.dept_no = d.dept_no;

--Query 5

SELECT 
	first_name, 
	last_name, sex
FROM 
	Employees
WHERE 
	first_name = 'Hercules'
AND 
	last_name LIKE 'B%';

  --Query 6
  
SELECT 
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
	Employees e
JOIN 
	Dept_emp de 
ON 
	e.emp_no = de.emp_no
JOIN 
	Departments d 
ON 
	de.dept_no = d.dept_no
WHERE 
	d.dept_name = 'Sales';

--Query 7

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
	Employees e
JOIN 
	Dept_emp de 
ON 
	e.emp_no = de.emp_no
JOIN 
	Departments d 
ON 
	de.dept_no = d.dept_no
WHERE 
	d.dept_name IN ('Sales', 'Development');

--Query 8

SELECT 
    last_name,
COUNT(*) AS frequency
FROM 
	Employees
GROUP BY 
	last_name
ORDER BY 
	frequency 
DESC;