CREATE TABLE students (
	id INTEGER PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	middle_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	age INTEGER,
	location VARCHAR(255) NOT NULL,
	created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
	updated_at TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location, created_at, updated_at)
VALUES 
	(1, 'Juan', '', 'Cruz', 18, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(2, 'Anne', '', 'Wall', 20, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(3, 'Theresa', '', 'Joseph', 21, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(4, 'Issac', '', 'Gray', 19, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(5, 'Zack', '', 'Matthews', 22, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
	(6, 'Finn', '', 'Lam', 25, 'Manila', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

UPDATE students
SET 
	first_name = 'Ivan',
	middle_name = 'Ingram',
	last_name = 'Howard',
	age = 25,
	location = 'Bulacan'
WHERE id = 1;

DELETE FROM students 
WHERE id = 6

SELECT COUNT(id) 
FROM students

SELECT * 
FROM students
WHERE LOCATION = 'Manila'

SELECT AVG(age) 
FROM students

SELECT * 
FROM students
order by age DESC

