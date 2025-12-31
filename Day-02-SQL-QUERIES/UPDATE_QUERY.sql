DROP DATABASE IF EXISTS day2;
CREATE DATABASE day2;
USE day2;
CREATE TABLE update_example
(
	Roll_no INT,
    Name VARCHAR(50),
    Email_id VARCHAR(100)
    
);

INSERT INTO update_example
VALUES
(1,"Aron Josh","aronjosh93@gmail.com"),
(2,"Alice Mary","alicealice20@gmail.com"),
(2,"Daisy Panimariyal","daisypotes93@gmail.com");

-- SQL_SAFE_UPDATES BY DEFAULT IS 1, In case of updating the table set the value to 0.
SET SQL_SAFE_UPDATES = 0;
UPDATE update_example -- SYNTAX
SET Roll_no = 3 -- Value need to be changed
WHERE Name = "Daisy Panimariyal"; -- Condition

-- Check Whether the table is updated or not!!!
SELECT * FROM update_example;

