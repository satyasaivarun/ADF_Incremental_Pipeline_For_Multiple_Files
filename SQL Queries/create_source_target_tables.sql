-- create employee sales source table
CREATE TABLE dbo.Employee_Sale_Source (
    SaleID INT PRIMARY KEY,            -- Unique identifier for each sale
    EmployeeID INT,                    -- ID of the employee who made the sale
    ProductName VARCHAR(100),          -- Name of the product sold
    SaleAmount DECIMAL(10, 2),         -- Sale amount in currency
    SaleDate DATETIME,                 -- Date and time of the sale
    LastModified DATETIME              -- Timestamp for the last modification
);


truncate table dbo.Employee_Sale_Source


INSERT INTO Employee_Sale_Source (SaleID, EmployeeID, ProductName, SaleAmount, SaleDate, LastModified)
VALUES
(1, 7, 'Laptop', 1500.00, '2024-11-18 10:30:00', '2024-11-01 10:30:00'),
(2, 8, 'Smartphone', 800.00, '2024-11-18 11:45:00', '2024-11-01 11:45:00'),
(3, 9, 'Tablet', 600.00, '2024-11-19 09:15:00', '2024-11-01 12:00:00'),
(4, 7, 'Monitor', 300.00, '2024-11-19 14:20:00', '2024-11-01 12:30:00'),
(5, 8, 'Keyboard', 50.00, '2024-11-19 15:40:00', '2024-11-01 13:00:00');


-- create Employee source table

CREATE TABLE dbo.Employee_Source (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    LastModified DATETIME
);


INSERT INTO dbo.Employee_Source (EmployeeID, FirstName, LastName, Department, Salary, LastModified)
VALUES
(1, 'Alice', 'Johnson', 'HR', 50000.00, '2024-11-01 10:30:00'),
(2, 'Bob', 'Smith', 'Finance', 60000.00, '2024-11-10 14:15:00'),
(3, 'Charlie', 'Brown', 'IT', 70000.00, '2024-11-15 09:45:00');


-- Create Watermark Table

CREATE TABLE db.WatermarkTable (
TableName VARCHAR(100), 
LastProcessedTimestamp DATETIME
)


INSERT INTO WatermarkTable (TableName, LastProcessedTimestamp)
VALUES
('Employee_Target', '2024-11-01 00:00:00'),
('Employee_Sale_Target', '2024-11-01 00:00:00');



--create two target tables

SELECT * into [dbo].[Employee_Target] FROM [dbo].[Employee_Source] where 1= 0

SELECT * into [dbo].[Employee_Sale_Target] FROM [dbo].[Employee_Sale_Source] where 1= 0





