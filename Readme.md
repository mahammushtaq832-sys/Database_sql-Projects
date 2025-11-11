## Date: 29 / 10 / 2025

### **Database:** MySQL  
**Project Status:** Completed  
**Learned From:** Apna College  
**Made By:** Maham  

**Note:** This is my **first GitHub repository** and also my **first database project**.



## Project Title  
**University Database Management System (UNI)**  



## Description  
This project demonstrates the creation and manipulation of a **university database** using **MySQL**.  
It includes two main tables — **STUDENT** and **COURSE** — and showcases **SQL operations** such as data insertion, selection, and joins.  
The project helped me understand fundamental **database design** and **relationships between tables**.



## SQL Code  

```sql
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
```

---

## Output Samples  

### STUDENT Table  
| students_name | students_id |
|----------------|-------------|
| maham          | 1           |
| ahmad          | 2           |
| Linta          | 3           |
| talha          | 4           |
| mushtaq        | 5           |

### COURSE Table  
| course_id | students_id | course_name |
|------------|--------------|-------------|
| 1 | 1 | DBMS |
| 2 | 2 | OOP |
| 3 | 3 | MATHS |
| 4 | 7 | SCIENCE |
| 5 | 8 | ISLAMIYAT |

### INNER JOIN Result  
| students_name | course_name |
|----------------|-------------|
| maham | DBMS |
| ahmad | OOP |
| Linta | MATHS |

---

## Concepts Used
- Database Creation (`CREATE DATABASE`)
- Table Creation (`CREATE TABLE`)
- Data Insertion (`INSERT INTO`)
- Data Retrieval (`SELECT`)
- Table Joins (`INNER JOIN`, `LEFT JOIN`)
- Dropping Tables (`DROP TABLE`)

---

## Key Learnings
- Understanding primary and foreign keys  
- Performing different types of joins  
- Managing table relationships  
- Displaying relational data efficiently  
