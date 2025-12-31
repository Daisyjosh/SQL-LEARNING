USE COLLEGE;
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee
(
	EmpID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    Department VARCHAR(5),
    Salary INT,
    HireDate DATE
);

INSERT INTO Employee
(EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(101, 'Aron', 'Josh', 'IT', 55000, '2022-01-15'),
(102, 'Alice', 'Mary', 'HR', 48000, '2021-11-20'),
(103, 'Daisy', 'Mariyal', 'FIN', 60000, '2023-03-10'),
(104, 'Joshua', 'Paul', 'IT', 62000, '2020-07-25'),
(105, 'Nobil', 'Initha', 'MKT', 50000, '2022-09-05'),
(106, 'Suhita', 'Sharma', 'OPS', 53000, '2019-05-18'),
(107, 'Keerthi', 'Roy', 'IT', 70000, '2024-01-01'),
(108, 'Madhavadiyan', 'Nair', 'HR', 51000, '2023-06-30'),
(109, 'Reka', 'Das', 'FIN', 58000, '2021-02-12'),
(110, 'Anista', 'Kumari', 'MKT', 54000, '2020-10-08');

-- Write a query to display every employee and all their data
SELECT * FROM Employee;

-- List only the FirstName, LastName, and Salary of every employee.
SELECT FirstName, LastName, Salary FROM Employee;

--  Show all employees who work in the 'IT' department.
SELECT * FROM Employee
WHERE Department = "IT";

-- Retrieve employees with a salary greater than 60000.
SELECT * FROM Employee
WHERE Salary > 60000;

-- List all employees ordered by HireDate from newest to oldest.
SELECT HireDate FROM Employee
ORDER BY HireDate DESC;

-- Show a list of all unique departments present in the table.
SELECT DISTINCT Department FROM Employee;

--  Find employees whose first name starts with ‘Aʼ.
SELECT * FROM Employee
WHERE FirstName LIKE "A%";

-- Show employees whose salaries are between 4000 and 7000.
-- Method I
SELECT * FROM Employee
WHERE Salary >= 40000 AND Salary <= 70000;

-- Method II
SELECT * FROM Employee
WHERE Salary BETWEEN 40000 AND 70000;

-- Find the average salary of all employees.
SELECT AVG(Salary) FROM Employee;

-- List each department along with the number of employees, but only include departmentswith more than 3 employees.
SELECT Department, COUNT(*) AS EmployeeCount
From Employee
GROUP BY Department
HAVING COUNT(*) > 1;

