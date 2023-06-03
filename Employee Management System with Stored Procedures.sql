-- Create the employees table
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  department VARCHAR(50) NOT NULL,
  position VARCHAR(50) NOT NULL,
  salary DECIMAL(8,2) NOT NULL
);

-- Create stored procedure for adding employees
CREATE PROCEDURE add_employee (
  IN emp_id INT,
  IN emp_name VARCHAR(100),
  IN emp_dept VARCHAR(50),
  IN emp_position VARCHAR(50),
  IN emp_salary DECIMAL(8,2)
)
BEGIN
  INSERT INTO employees (employee_id, name, department, position, salary)
  VALUES (emp_id, emp_name, emp_dept, emp_position, emp_salary);
END;

-- Create stored procedure for updating employee information
CREATE PROCEDURE update_employee (
  IN emp_id INT,
  IN emp_name VARCHAR(100),
  IN emp_dept VARCHAR(50),
  IN emp_position VARCHAR(50),
  IN emp_salary DECIMAL(8,2)
)
BEGIN
  UPDATE employees
  SET name = emp_name, department = emp_dept, position = emp_position, salary = emp_salary
  WHERE employee_id = emp_id;
END;

-- Create stored procedure for retrieving employee data by department
CREATE PROCEDURE get_employees_by_department (
  IN emp_dept VARCHAR(50)
)
BEGIN
  SELECT * FROM employees WHERE department = emp_dept;
END;

-- Create stored procedure for deleting an employee
CREATE PROCEDURE delete_employee (
  IN emp_id INT
)
BEGIN
  DELETE FROM employees WHERE employee_id = emp_id;
END;
