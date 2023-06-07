-- 1 List the employee number, last name, first name, sex, and salary of each employee.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s on e.emp_no = s.emp_no;

-- 2 List the first name, last name, and hire date for the employees who were hired in 1986.

select * from employees
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

-- 3 List the manager of each department along with their department number,
--department name, employee number, last name, and first name.

select dm.dept_no, dp.dept_name, dm.emp_no, e.last_name, e.first_name
from dept_manager as dm
join departments as dp on dm.dept_no = dp.dept_no
join employees as e on dm.emp_no =  e.emp_no;

-- 4 List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name.

select dem.dept_no, e.emp_no, e.last_name, e.first_name, dp.dept_name
from dept_emp as dem
join employees as e on dem.emp_no = e.emp_no
join departments as dp on dem.dept_no = dp.dept_no;

-- 5 List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B.

select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6 List each employee in the Sales department, 
--including their employee number, last name, and first name.

select e.emp_no, e.last_name, e.first_name
from employees as e 
join dept_emp as dem on e.emp_no = dem.emp_no
join departments as dp on dem.dept_no = dp.dept_no
where dp.dept_name = 'Sales';

-- 7 List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, dp.dept_name
from employees as e 
join dept_emp as dem on e.emp_no = dem.emp_no
join departments as dp on dem.dept_no = dp.dept_no
where dp.dept_name in ('Sales','Development');

-- 8 List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).

select last_name, count(*) as frequency
from employees
group by last_name
order by frequency desc;