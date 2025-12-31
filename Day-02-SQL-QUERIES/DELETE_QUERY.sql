DROP DATABASE IF EXISTS day2;
CREATE DATABASE day2;
USE day2;
CREATE TABLE delete_example
(
	Roll_no INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email_id VARCHAR(100) UNIQUE
    
);

INSERT INTO delete_example
VALUES
(1,"Aron Josh","aronjosh93@gmail.com"),
(2,"Alice Mary","alicealice20@gmail.com"),
(3,"Daisy Panimariyal","daisypotes93@gmail.com");

-- FOR REFERENCE 
SELECT * FROM delete_example;

-- SYNTAX
DELETE FROM delete_example
WHERE Roll_no = 3; -- Condition

SELECT * FROM delete_example; -- Check!!

DELETE FROM delete_example; -- To DELETE ALL THE ROWS

SELECT * FROM delete_example; -- Check!!

