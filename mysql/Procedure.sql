-- syntax of PROCEDURE: 
-- CREATE PROCEDURE procedure_name ([parameter_list])
-- BEGIN
--   -- Procedure body with SQL statements
-- END;

Step - 1 :  Create table of employees with employee_id, employee_name, salary 

CREATE TABLE employees (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  employee_name VARCHAR(255) NOT NULL,
  salary DECIMAL(10, 2) NOT NULL
);

-- Example
DELIMITER //
CREATE PROCEDURE insert_employee(IN emp_name VARCHAR(255), IN emp_salary DECIMAL(10, 2))
BEGIN
  INSERT INTO employees (employee_name, salary) VALUES (emp_name, emp_salary);
END;
//
DELIMITER ;

-- call procdure
use blogs;
CALL insert_employee('John Doe', 50000.00);