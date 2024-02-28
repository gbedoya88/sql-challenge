-- Create tables for Module 9

-- Create Departments table
create table Departments(
	dept_no varchar(10) primary key not null,
	dept_name varchar(40) not null
);


--  Create Titles table
create table Titles(
	title_id varchar(10) primary key not null,
	title varchar(40) not null
);



-- Create Employees table
create table Employees(
	emp_no int primary key not null,
	emp_title_id varchar(10) not null,
	birth_date date not null,
	first_name varchar(40) not null,
	last_name varchar(40) not null,
	sex varchar(1) not null,
	hire_date date not null,
	foreign key (emp_title_id) references Titles(title_id)
);

-- Create Dept_emp table
create table Dept_emp(
	emp_no int not null,
	dept_no varchar(10) not null, 
	foreign key (emp_no) references Employees(emp_no),
	foreign key (dept_no) references Departments(dept_no)
);


-- Create Dept_manager table
create table Dept_manger(
	dept_no varchar(10) not null,
	emp_no int not null,
	foreign key (dept_no) references Departments(dept_no),
	foreign key (emp_no) references Employees(emp_no)
);

-- Create Salaries table
create table Salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references Employees(emp_no)
);





