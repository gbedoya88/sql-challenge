-- List the employee number, last name, first name, sex and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from Employees e
join Salaries s on e.emp_no = s.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date
from Employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

-- List the manager of each department along with their department number, department name,
-- employee number, last name, and first name
select departments.dept_no, departments.dept_name, dept_manager.emp_no,
		employees.last_name, employees.first_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees 
on dept_manager.emp_no = employees.emp_no;


-- List the department number for each employee along with that employee's employee
-- number, last name, first name, and department name.


select departments.dept_no,	dept_emp.emp_no,	employees.last_name, 
			employees.first_name,	departments.dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees 
on dept_emp.emp_no = employees.emp_no;


-- List the first name, last name, and sex of each employee whose first name is Hercules
-- and whose last name begins with the letter B
select first_name, last_name, sex 
from employees
where first_name = 'Hercules' and last_name like 'B%'
;


-- List each employee in the Sales department, including their employee number, last name
-- and first name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments
on dept_emp.dept_no = departments.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where dept_name = 'Sales'
;



-- List each employee in the Sales and Development departments, including their employee number,
-- last name, first name, and department name
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments
on dept_emp.dept_no = departments.dept_no
join employees
on dept_emp.emp_no = employees.emp_no
where dept_name in ('Sales' , 'Development')
;



-- List the frequency counts, in descending order, of all the employee last names (that is,
-- how many employees share each last name).
select last_name, count(*) as Frequency_counts
from employees
group by last_name
order by frequency_counts desc
;












