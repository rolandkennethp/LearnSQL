SELECT
    e.name,
    d.name AS department_name
FROM employees e
JOIN departments d ON e.department_id = d.id;

select
    e.name as employee_name,
    e.job_role as job_role,
    d.name as department,
    e.salary as salary
from employees e
join departments d on e.department_id = d.id;

select 
    e.name as employee_name
from employees e
join departments d on e.department_id = d.id
where d.name = 'IT';

select 
    e.name as employee_name,
    d.name as department_name
from employees e
join departments d on e.department_id = d.id
where e.salary > 60000;

SELECT
    name as department_name,
    location
from departments;

SELECT
    p.project_name as project_name,
    d.name as department_name
from projects p
join departments d on p.department_id = d.id;

select
    e.name as employee_name,
    d.name as department_name
from employees e
left join departments d on e.department_id = d.id;

select
    e.name as employee_name,
    d.name as department_name
from departments d
left join employees e on e.department_id = d.id;

select
    d.name as department_name
from departments d
left join employees e on e.department_id = d.id
where e.department_id is null;

SELECT
    d.name as department_name,
    COUNT(e.id) as employee_count
FROM departments d
LEFT JOIN employees e ON d.id = e.department_id
GROUP BY d.name;


select
    e.name as employee,
    p.project_name as project
from employees e
join employee_projects ep on e.id = ep.employee_id
join projects p on ep.project_id = p.id;

employee
department
project

select
    e.name as employee,
    p.project_name as project,
    d.name as department
from employees e
join employee_projects ep on e.id = ep.employee_id
join projects p on ep.project_id = p.id
join departments d on e.department_id = d.id;

select
     distinct e.name as employee
from employees e
join employee_projects ep on e.id = ep.employee_id
join projects p on ep.project_id = p.id
where p.status = 'Active'
order by e.name;

select
     distinct e.name as employee
from employees e
join employee_projects ep on e.id = ep.employee_id
join projects p on ep.project_id = p.id
join departments d on e.department_id = d.id
where p.status = 'Active' and d.name = 'IT'
order by e.name;

select
    d.name as department,
    count(*) as employee_count
from departments d
join employees e on d.id = e.department_id
group by d.name;

select 
    d.name,
    avg(e.salary) as average_salary
from employees e
join departments d
on e.department_id = d.id
group by d.name;

select 
    d.name,
    max(e.salary) as average_salary
from employees e
join departments d
on e.department_id = d.id
group by d.name;

select
    p.project_name as project,
    count(*) as employees_working
from projects p
join employee_projects ep on ep.project_id = p.id
join employees e on e.id = ep.employee_id
group by p.project_name;

select
    d.name as department,
    sum(p.budget) as total_budget
from departments d
join projects p on p.department_id = d.id
group by d.name;

SELECT
    d.name as department
from departments d
join employees e on d.id = e.department_id
group by d.name
having count(*) > 4;

SELECT
    p.project_name as project,
    count(*) as total_employees
from projects p 
join employee_projects ep on ep.project_id = p.id
join employees e on e.id = ep.employee_id
group by p.project_name
having count(*) >= 2;

select
    d.name as department
from departments d
join employees e on d.id = e.department_id
group by d.name
having avg(e.salary) > 50000;


select
    d.name as department
from departments d
join employees e on d.id = e.department_id
group by d.name
having sum(e.salary) > 250000;


select 
    e.name as name,
    d.name as department,
    e.salary as salary
from employees e
left join departments d on e.department_id = d.id
order by e.salary desc;

select 
    d.name as department
from employees e
left join departments d on e.department_id = d.id
order by e.salary desc
limit 1;

select 
    e.name as employee
from employees e 
left join employee_projects ep on ep.employee_id = e.id
where ep.assigned_date is null;

SELECT  
    p.project_name as project
from projects p 
left join employee_projects ep on ep.project_id = p.id
where ep.assigned_date is null;

select 
    d.name as department
from employees e
join departments d on e.department_id = d.id
group by d.name
order by (avg(e.salary)) desc
limit 1;

select 
    e.name as employee,
    d.name as department
from employees e
left join departments d on e.department_id = d.id
order by e.salary desc
limit 1;