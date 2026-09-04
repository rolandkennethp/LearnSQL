SELECT count(*) FROM users;

Select count(*) FROM users WHERE age > 0;

select count(distinct age) from users;

select avg(age) from users;

select min(age) From users;
select max(age) From users;

select count(*) as Total_users, count(age) as Age_Count, max(age) as Max_Age, min(age) as Min_Age, round(avg(age), 2) as Average_age from users;

select upper(name) from users;
select lower(name) from users;
select name,length(name) from users;

select left(name, 3) as First_Three_Chars from users;
select right(name, 2) as Last_Three_Chars from users;

select concat(name, ' - ', email) as User_Info from users;

select REPLACE(email, '@gmail.com', '@example.com') as Updated_Email from users;

select concat('User: ', name) from users;

select 10/3;

select round(15.6789,2);

select abs(-50);

select power(2, 5);


select
    name,
    age,
    CASE 
        WHEN age IS NULL THEN 'Unknown'
        WHEN age<18 THEN 'Minor'
        when age between 18 and 29 THEN 'Young Adult'
        ELSE 'Adult'
    END as Age_Group
FROM users;

SELECT
    name,
    CASE 
        WHEN age is not null THEN  'Has age'
        ELSE 'No age'
    END
FROM users;

select name, COALESCE(age, '0') as Age from users;
select name, COALESCE(age::text, 'Unknown') as Age from users;

select current_DAte;
select current_DAte + INTERVAL '30 day';
select current_DAte - INTERVAL '30 day';

select current_timestamp;

select extract(year from current_date) as Current_Year;
select extract(month from current_date) as month;


select
    upper(name) as Name,
    COALESCE(age, 0),
    case
        when age is null then 'Unknown'
        when age < 18 then 'Minor'
        when age between 18 and 29 then 'Young Adult'
        else 'Adult'
    end as Age_Group
from users
order by age desc nulls last;