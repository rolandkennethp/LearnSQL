INSERT INTO users (name, email, age) VALUES
    ('John', 'john@gmail.com', 28);

INSERT INTO users (name, email, age) VALUES
    ('Sarah', 'sarah@gmail.com', 24),
    ('Mike', 'mike@gmail.com', 30);

INSERT INTO users (name, email) VALUES ('Kevin', 'kevin@gmail.com');

UPDATE users 
SET age = 29
WHERE name = 'John';

UPDATE users
SET age = 25 AND email = 'sarah.new@gmail.com'
where name = 'Sarah';

UPDATE users
SET age = age + 1
WHERE age < 25;

DELETE FROM users WHERE name = 'Kevin';

DELETE FROM users WHERE age > 30;

SELECT * FROM users
WHERE (age BETWEEN 20 AND 30) AND (email LIKE '%gmail%');

SELECT * FROM users
WHERE name IN('Alice', 'Bob', 'Sarah');

SELECT * FROM users
WHERE name NOT IN('Alice', 'Bob', 'Sarah');

SELECT * FROM users
WHERE name ILIKE 'S%';
SELECT * FROM users
WHERE email LIKE '%.com'

SELECT * FROM users
WHERE name ILIKE '%a%';

SELECT * FROM users
WHERE age IS NULL;

SELECT 
    name,
    COALESCE(age, 0) as age
FROM users;

UPDATE users
SET email = NULL
WHERE name = 'Alice';

SELECT 
    name,
    COALESCE(email, 'No email') as email
FROM users;

SELECT * FROM users ORDER BY age ASC;

SELECT * FROM users ORDER BY name ASC;

SELECT * FROM users ORDER BY age DESC LIMIT 3;

SELECT * FROM users ORDER BY age ASC LIMIT 3;

SELECT * FROM users ORDER BY id ASC LIMIT 3 OFFSET 2;

SELECT *
FROM users
ORDER BY age DESC, name ASC;

UPDATE users
SET
    age = 25,
    email = 'sarah.new@gmail.com'
WHERE name = 'Sarah';