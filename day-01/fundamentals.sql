--the things revised

SELECT * FROM users;
SELECT name,email FROM users;

SELECT 
    name As user_name,
    age AS user_age
FROM users;

SELECT * FROM users WHERE age > 21;

SELECT * FROM users WHERE age = 25;

SELECT * FROM users WHERE age <= 21;

SELECT * FROM users WHERE age <> 25;

SELECT * FROM users where age > 21 AND name = 'Bob';

SELECT * FROM users where age = 21 OR age = 25;

SELECT * FROM users WHERE name <> 'Alice';

SELECT *
FROM users
WHERE name 
IN ('Alice', 'Bob', 'Charlie');

SELECT * FROM users WHERE age BETWEEN 21 AND 25;

SELECT * FROM users WHERE name LIKE 'A%';

SELECT * FROM users WHERE name LIKE '%e';
SELECT * FROM users WHERE email LIKE '%gmail%';

SELECT * FROM users WHERE name ILIKE 'a%';

INSERT INTO users (name, email) VALUES 
    ('David', 'david@gmail.com'),
    ('Deepa', 'deepa@gmail.com');

SELECT * FROM users WHERE age IS NULL;

SELECT * FROM users WHERE age IS NOT NULL;

SELECT * FROM users ORDER BY age ASC;
SELECT * FROM users ORDER BY age DESC;

UPDATE users SET age = 23 WHERE name = 'Alice';

SELECT * FROM users LIMIT 2;

SELECT DISTINCT age FROM users;

DELETE FROM users WHERE name = 'David';


--answer to the challenge

SELECT * 
FROM users
WHERE age BETWEEN 21 AND 25 AND
    email LIKE '%gmail%'
ORDER BY age ASC
LIMIT 3;