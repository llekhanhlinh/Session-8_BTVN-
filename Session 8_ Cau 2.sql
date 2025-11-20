create database hr_department;
use hr_department;

create table employees(
	employee_id int primary key,
	full_name varchar(100),
	department varchar(100),
	salary DECIMAL,
	hire_date date
);
    
select count(*) as number_of_employees
from employees;

select sum(salary) as total_monthly_salary
from employees;

select avg(salary) as average_salary
from employees;

select 
	max(salary) as highest_salary,
    min(salary) as lowest_salary
from employees;

select sum(salary) as it_department_salary
from employees
where department = 'IT';