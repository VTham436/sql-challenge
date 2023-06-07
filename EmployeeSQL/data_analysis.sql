/*each employee*/
select employees.emp_no, employees.last_name, 
employees.first_name, employees.sex, salaries.salary
from employees
inner join salaries
on employees.emp_no=salaries.emp_no

/*employees hired 1986*/
select first_name, last_name, hire_date 
from employees
where hire_date between '1/1/1986' and '12/31/1986';

/*manager of each department*/
select departments.dept_no, departments.dept_name, 
dept_manager.emp_no, employees.last_name, 
employees.first_name
from departments
inner join dept_manager
on departments.dept_no=dept_manager.dept_no
inner join employees
on dept_manager.emp_no=employees.emp_no;

/*department number*/
select dept_emp.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no;

/*Hercules B.*/
select first_name, last_name
from employees
where first_name = 'Hercules'
and last_name LIKE 'B%';

/*Sales department*/
select dept_emp.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales';

/*sales and development*/
select dept_emp.emp_no, employees.last_name, 
employees.first_name, departments.dept_name
from dept_emp
inner join employees
on dept_emp.emp_no=employees.emp_no
inner join departments
on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales' 
or departments.dept_name = 'Development';

/*frequency counts*/
select last_name,
count(last_name) as "frequency"
from employees
group by last_name
order by
count(last_name) desc;



