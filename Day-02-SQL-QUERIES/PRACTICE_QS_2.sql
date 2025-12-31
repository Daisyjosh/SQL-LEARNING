
USE COLLEGE;
DROP TABLE IF EXISTS Student;
CREATE TABLE Student
(
	Reg_no INT UNIQUE,
	Name VARCHAR(50),
    City VARCHAR(50),
    Mark INT
);

INSERT INTO Student
(Reg_no, Name, City,Mark)
VALUES
(1,"Daisy Panimariyal","Tuticorin",97),
(2,"Niranjana","Namakkal",88),
(3,"Deephiksha","Theni",89),
(4,"Shrinidhi","Coimbatore",90),
(5,"Vishali","Chennai",91),
(6,"Manibala","Dindugul",92),
(7,"Sri Lakshya","Coimbatore",93);

-- SELECT ALL STUDENTS WHO SCORED ABOVE 90
SELECT * FROM Student
WHERE Mark >= 90;

SELECT * FROM Student;

-- FIND NAMES OF ALL CITIES WHERE STUDENTS ARE FROM 
-- METHOD I
SELECT DISTINCT City FROM Student;

-- METHOD II
SELECT City 
FROM Student
GROUP BY City;

-- FIND THE MAXIMUM MARKS OF STUDENTS ARE FROM EACH CITY
SELECT City, Max(Mark) FROM Student
GROUP BY City;

-- FIND THE AVERAGE OF THE CLASS
SELECT AVG(Mark) FROM Student;

-- ADD A NEW COLUMN GRADE, ASSIGN GRADE SUCH THAT
-- MARKS > 80, GRADE = O 
-- MARKS < 70-80, GRADE = A
ALTER TABLE Student
ADD COLUMN Grade VARCHAR(2);

UPDATE Student
SET Grade = "O"
WHERE Mark >= 80;

UPDATE Student
SET Grade = "A"
WHERE Mark < 80 AND Mark >= 70;

SELECT * FROM Student;



