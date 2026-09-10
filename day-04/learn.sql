Select
    *
from employees; --to see the columns and data in the table

SELECT department, count(*) as employee_count
FROM employees
GROUP BY department;

SELECT
    department,
    SUM(salary) as total_salary
FROM employees
GROUP BY department;

SELECT
    department,
    round(AVG(salary), 2) as total_salary
FROM employees
GROUP BY department;

SELECT
    department,
    Max(salary) as total_salary
FROM employees
GROUP BY department;

SELECT
    department,
    MIN(salary) as total_salary
FROM employees
GROUP BY department;

SELECT
    department,
    count(*) as employee_count,
    sum(salary) as total_salary,
    round(avg(salary), 2) as average_salary,
    max(salary) as highest_salary,
    min(salary) as lowest_salary
FROM employees
GROUP BY department;

SELECT
    department,
    city,
    count(*) as employee_count
From employees
GROUP BY department, city;



select
    department,
    job_role,
    round(avg(salary),2) as average_salary
from employees
group by department, job_role;

select 
    job_role,
    count(*) as employee_count
from employees
group by job_role;

select 
    city,
    count(*) as employee_count
from employees
group by city;

select
    department,
    count(*) as employee_count
from employees
where salary > 50000
group by department;

select
    department,
    count(*) as employee_count
from employees
where experience > 2
group by department;

select
    city,
    count(*) as employee_count
from employees
where salary >= 45000
group by city;

SELECT
    department
from employees
group by department
having count(*) > 5;

SELECT
    department
from employees
group by department
having count(*) >= 5;


SELECT
    department
from employees
group by department
having avg(salary) > 50000;


SELECT
    department
from employees
group by department
having max(salary) > 70000;

SELECT
    department
from employees
group by department
having sum(salary) > 250000;


select
    department,
    count(*) as employee_count
from employees
where salary > 45000
group by department
having count(*) > 3;


select
    city,
    count(*) as employee_count
from employees
where experience > 2
group by city
having count(*) >= 3;

select 
    job_role
from employees
group by job_role
having count(*) > 2;

SELECT  
    department
from employees
where experience > 2
group by department
having avg(salary) > 50000;

SELECT
    department,
    count(*) as employee_count
from employees
group by department
order by count(*) desc;

SELECT
    department,
    (round(avg(salary), 2)) as average_salary
from employees
group by department
order by avg(salary) desc;

SELECT
    department,
    sum(salary) as total_salary
from employees
group by department
order by sum(salary) desc
limit 2;

select
    department,
    count(*) as employee_count
from employees
group by department
order by count(*) desc
limit 3;

select
    department,
    count(*) as employee_count,
    round(avg(salary), 2) as average_salary,
    max(salary) as highest_salary
from employees
where salary > 40000
group by department
having count(*) > 3
order by avg(salary) desc
limit 2;


