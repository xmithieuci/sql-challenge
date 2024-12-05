CREATE TABLE Departments (
    dept_no VARCHAR(100) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(100) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    sex CHAR(1) CHECK (sex IN ('M', 'F')), 
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(100) NOT NULL,
    PRIMARY KEY (emp_no, dept_no), 
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no), 
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no) 
	);

CREATE TABLE dept_manager (
    dept_no VARCHAR(100) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

