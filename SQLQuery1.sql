/*create database  UniversityDB;
use  UniversityDB;

create table students(
id int not null unique,
first_name varchar(45) not null,
last_name varchar(45) not null,
email varchar(60) unique,
department varchar(25) not null,
department_id int primary key
)
insert into students(id,first_name,last_name,email,department,department_id)
values(30,'Amany','Shehab','amany.gmail.com','Medical informatics',1),
(27,'Asmaa','Shehab','asmaa.gmail.com','Scientific',2),
(24,'Esraa','Shehab','esraa@gmail.com','Unknown',3)


CREATE TABLE courses (
    course_id INT NOT NULL,
    name VARCHAR(30),
    department_id INT,
	credits int not null,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES students(department_id)
);


insert into courses(course_id,name,department_id,credits)
values(1,'English',3,4),
(3,'Physics',2,5),
(5,'CS',1,6);


SELECT * 
FROM students AS s
FULL JOIN courses AS c 
ON s.department_id = c.department_id;*/


UPDATE courses
SET credits = 4
WHERE name = 'Physics';

DELETE FROM students
WHERE first_name = 'Esraa';

ALTER TABLE students 
ADD enrollment_date DATE;

UPDATE students
SET enrollment_date = '2023-09-01';

SELECT *
FROM students
WHERE enrollment_date >= '2023-09-01';

SELECT *
FROM courses
WHERE credits > 3;

SELECT s.first_name, s.last_name, c.name
FROM students AS s
JOIN courses AS c ON s.department_id = c.department_id;

ALTER TABLE courses
ADD CHECK (credits >= 0);

SELECT s.first_name, s.last_name,s.department_id,c.department_id,c.name
FROM students AS s
JOIN courses AS c ON s.department_id = c.department_id; 

