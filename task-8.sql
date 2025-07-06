-- Create a sample table: Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary INT
);

-- Insert sample data
INSERT INTO Employees VALUES
(1, 'sameer', 'luthra', 60000),
(2, 'Jasmin', 'varma', 50000),
(3, 'Alia', 'sharma', 70000),
(4, 'rahul', 'patil', 40000);

-- -----------------------------------------------------
-- ✅ STORED PROCEDURE: Increase salary by a percentage
-- -----------------------------------------------------
DELIMITER $$

CREATE PROCEDURE IncreaseSalary(
    IN emp_id INT,
    IN percent_increase DECIMAL(5,2)
)
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * percent_increase / 100)
    WHERE EmployeeID = emp_id;
END$$

DELIMITER ;

-- Example: CALL IncreaseSalary(2, 10);

-- -----------------------------------------------------
-- ✅ FUNCTION: Get full name by EmployeeID
-- -----------------------------------------------------
DELIMITER $$

CREATE FUNCTION GetFullName(emp_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(100);
    SELECT CONCAT(FirstName, ' ', LastName) INTO full_name
    FROM Employees
    WHERE EmployeeID = emp_id;
    RETURN full_name;
END$$

DELIMITER ;

-- Example: SELECT GetFullName(1);
