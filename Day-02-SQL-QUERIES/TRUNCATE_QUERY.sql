DROP DATABASE IF EXISTS day2;
CREATE DATABASE day2;
USE day2;
CREATE TABLE truncate_example
(
	Roll_no INT PRIMARY KEY,
    Age INT,
    Name VARCHAR(50) NOT NULL,
    Email_id VARCHAR(100) UNIQUE,
    Gender VARCHAR(20),
    Residence VARCHAR(50)
);

INSERT INTO truncate_example
VALUES
(1,"20","Aron","aronjosh93@gmail.com","Male","Tuticorin"),
(2,"22","Alice Mary","alicealice20@gmail.com","Female","Tirunelveli"),
(3,"30","Daisy Panimariyal","daisypotes93@gmail.com","Female","Coimbatore"),
(4,"32","Aron Joseph","joshjosh23@gmail.com","Male","Dharmapuri"),
(5,"20","Suzhina Joseph","suzzhii34@gmail.com","Female","Tuticorin");

SELECT * FROM truncate_example;

-- Operation: To delte table's data
TRUNCATE TABLE truncate_example;
