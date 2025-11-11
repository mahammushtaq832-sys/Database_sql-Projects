CREATE DATABASE UNI;

USE UNI;

CREATE TABLE STUDENT(
  students_name VARCHAR(50),
  students_id INT PRIMARY KEY
);

INSERT INTO STUDENT (students_name, students_id)
VALUES 
  ("maham", 1),
  ("ahmad", 2),
  ("Linta", 3),
  ("talha", 4),
  ("mushtaq", 5);

SELECT * FROM STUDENT;

CREATE TABLE COURSE (
  course_id INT,
  students_id INT,
  course_name VARCHAR(50)
);

INSERT INTO COURSE (course_id, students_id, course_name)
VALUES
  (1,1,"DBMS"),
  (2,2,"OOP"),
  (3,3,"MATHS"),
  (4,7,"SCIENCE"),
  (5,8,"ISLAMIYAT");

SELECT * FROM COURSE;

-- INNER JOIN
SELECT s.students_name, c.course_name
FROM STUDENT s
INNER JOIN COURSE c ON s.students_id = c.students_id;

-- LEFT JOIN
SELECT s.students_name, c.course_name
FROM STUDENT s
LEFT JOIN COURSE c ON s.students_id = c.students_id;

-- Drop table
DROP TABLE STUDENT;
