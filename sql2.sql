SELECT CNAME
INTO   Deposit_SQ
FROM   Deposit;

SELECT *
FROM   Deposit_SQ;

CREATE TABLE sql_table (
    EID        INT          PRIMARY KEY,
    Name       VARCHAR (50),
    City       VARCHAR (50),
    Department VARCHAR (50)
);

INSERT  INTO sql_table
VALUES (101, 'Rahul Sharma', 'Mumbai', 'IT'),
       (102, 'Priya Patel', 'Ahmedabad', 'HR'),
       (103, 'Amit Kumar', 'Delhi', 'Finance'),
       (104, 'Neha Singh', 'Pune', 'Marketing'),
       (105, 'Vikas Jain', 'Jaipur', 'Sales'),
       (106, 'Karan Verma', 'Surat', 'IT'),
       (107, 'Anjali Mehta', 'Rajkot', 'HR'),
       (108, 'Rohit Gupta', 'Vadodara', 'Finance'),
       (109, 'Sneha Shah', 'Bangalore', 'Marketing'),
       (110, 'Arjun Patel', 'Hyderabad', 'Sales'),
       (111, 'Pooja Desai', 'Rajkot', 'IT'),
       (112, 'Manish Joshi', 'Ahmedabad', 'HR'),
       (113, 'Nisha Kapoor', 'Mumbai', 'Finance'),
       (114, 'Deepak Yadav', 'Delhi', 'Marketing'),
       (115, 'Asha Nair', 'Kochi', 'Sales'),
       (116, 'Rakesh Sharma', 'Pune', 'IT'),
       (117, 'Divya Patel', 'Surat', 'HR'),
       (118, 'Sanjay Shah', 'Vadodara', 'Finance'),
       (119, 'Kavita Gupta', 'Jaipur', 'Marketing'),
       (120, 'Nitin Singh', 'Lucknow', 'Sales'),
       (121, 'Mehul Patel', 'Rajkot', 'IT'),
       (122, 'Rina Mehta', 'Ahmedabad', 'HR'),
       (123, 'Harsh Trivedi', 'Surat', 'Finance'),
       (124, 'Jay Shah', 'Mumbai', 'Marketing'),
       (125, 'Komal Patel', 'Vadodara', 'Sales'),
       (126, 'Yash Patel', 'Rajkot', 'IT'),
       (127, 'Bhavya Joshi', 'Pune', 'HR'),
       (128, 'Sagar Desai', 'Delhi', 'Finance'),
       (129, 'Krupa Shah', 'Ahmedabad', 'Marketing'),
       (130, 'Dhruv Patel', 'Surat', 'Sales');

SELECT *
FROM   sql_table;

SELECT name
FROM   sql_table
WHERE  name LIKE 'a%';

--1)
SELECT GETDATE() AS CURRENTDATETIME;

SELECT YEAR(GETDATE()) AS CURRENTYEAR;

SELECT MONTH(GETDATE()) AS CURRENTMONTH;

SELECT DAY(GETDATE()) AS CURRENTDAY;

SELECT DATENAME(MONTH, GETDATE()) AS MONTH_NAME;

SELECT CEILING(25.5);

SELECT ASCII('A');

SELECT CHAR(65);

SELECT CHARINDEX('a', 'Karan Patel');

SELECT PATINDEX('%a%', 'Karan Patel');

SELECT LEFT('Karan', 3);

SELECT RIGHT('Karan', 3);

SELECT LTRIM('  Ka   ran');

SELECT RTRIM('  Karan  ');

SELECT REPLICATE('a', 3);

--2)
SET @@AUTOCOMMIT = 0;

BEGIN TRANSACTION;

DELETE sql_table
WHERE  EID = 101;

SELECT *
FROM   sql_table;

ROLLBACK;

SELECT *
FROM   sql_table;

COMMIT TRANSACTION;

SELECT *
FROM   sql_table;

SELECT   count(*) AS count,
         Department AS deparment
FROM     sql_table
GROUP BY Department;

CREATE TABLE Customer_o (
    CustomerID   INT           PRIMARY KEY,
    CustomerName VARCHAR (100),
    City         VARCHAR (50) 
);

CREATE TABLE Orders_customer (
    OrderID     INT             PRIMARY KEY,
    CustomerID  INT            ,
    ProductName VARCHAR (100)  ,
    Amount      DECIMAL (10, 2)
);

INSERT  INTO Customer_o
VALUES (1, 'John Smith', 'New York'),
       (2, 'Alice Brown', 'Los Angeles'),
       (3, 'Michael Lee', 'Chicago'),
       (4, 'Emma Wilson', 'Houston'),
       (5, 'David Clark', 'Miami');

INSERT  INTO Orders_customer
VALUES (101, 1, 'Laptop', 800),
       (102, 2, 'Mobile Phone', 500),
       (103, 1, 'Keyboard', 50),
       (104, 3, 'Monitor', 200),
       (105, 6, 'Printer', 150);

SELECT CustomerName AS customername,
       ProductName,
       Amount
FROM   Customer_o
       FULL OUTER JOIN
       Orders_customer
       ON Customer_o.CustomerID = Orders_customer.CustomerID;

SELECT *
FROM   Customer_o
       RIGHT OUTER JOIN
       Orders_customer
       ON Customer_o.CustomerID = Orders_customer.CustomerID;


GO
CREATE OR ALTER VIEW employee_view
AS
SELECT EID,
       Name,
       City,
       Department
FROM   sql_table;


GO
SELECT *
FROM   employee_view;

SELECT *
FROM   sql_table;

UPDATE employee_view
SET    NAME = 'jadav'
WHERE  EID = 101;

SELECT *
FROM   employee_view;