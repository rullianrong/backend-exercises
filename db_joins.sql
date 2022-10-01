-- Student table from previous lesson
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

-- New table notes
CREATE TABLE notes (
	id INTEGER PRIMARY KEY,
	body VARCHAR(255),
	student_id INTEGER 
        REFERENCES students(id)
);

INSERT INTO notes (id, body, student_id) 
VALUES
	(1, 'Alpha', null),
	(2, 'Bravo', null),
	(3, 'Charlie', 1),
	(4, 'Delta', 4),
	(5, 'Echo', 2),
	(6, 'Foxtrot', 3),
	(7, 'Golf', 5),
	(8, 'Hotel', 2),
	(9, 'India', 1),
	(10, 'Juliet', 3)
;

-- Inner Join
SELECT *
FROM students s
INNER JOIN notes n
ON s.id = n.student_id;

-- Left Join
SELECT *
FROM students s
LEFT JOIN notes n
ON s.id = n.student_id;

-- Right Join
SELECT *
FROM students s
RIGHT JOIN notes n
ON s.id = n.student_id;

-- Full Join
SELECT *
FROM students s
FULL JOIN notes n
ON s.id = n.student_id;