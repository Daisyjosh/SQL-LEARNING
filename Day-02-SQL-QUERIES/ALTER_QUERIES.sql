DROP DATABASE IF EXISTS day2;
CREATE DATABASE day2;
USE day2;
CREATE TABLE alter_example
(
	Roll_no INT PRIMARY KEY,
    Age INT,
    Name VARCHAR(50) NOT NULL,
    Email_id VARCHAR(100) UNIQUE,
    Gender VARCHAR(20),
    Residence VARCHAR(50)
);

INSERT INTO alter_example
VALUES
(1,"20","Aron","aronjosh93@gmail.com","Male","Tuticorin"),
(2,"22","Alice Mary","alicealice20@gmail.com","Female","Tirunelveli"),
(3,"30","Daisy Panimariyal","daisypotes93@gmail.com","Female","Coimbatore"),
(4,"32","Aron Joseph","joshjosh23@gmail.com","Male","Dharmapuri"),
(5,"20","Suzhina Joseph","suzzhii34@gmail.com","Female","Tuticorin");

SELECT * FROM alter_example;

-- Add Column

ALTER TABLE alter_example
ADD COLUMN State VARCHAR(30) DEFAULT "Tamil Nadu";

-- INSERT INTO alter_example
-- (State)
-- VALUES
-- ("Tamil Nadu"),
-- ("Tamil Nadu"),
-- ("Tamil Nadu"),
-- ("Tamil Nadu"),
-- ("Tamil Nadu");

-- DELETE A COLUMN
ALTER TABLE alter_example
DROP COLUMN age;

-- RENAME THE TABLE
ALTER TABLE alter_example
RENAME TO alter__example;

-- RENAME THE COLUMN USING CHANGE
ALTER TABLE alter__example
CHANGE COLUMN Roll_no Reg_no INT UNIQUE;


-- MODIFY THE COLUMN'S DATATYPE / CONSTRAINTS
ALTER TABLE alter__example
MODIFY COLUMN Reg_no INT Default 0;


SELECT * FROM alter__example; -- Check!!!




