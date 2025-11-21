--  What is the name of the table that holds the items Northwind sells?
SELECT * FROM northwind.Products;
--  Write a query to list the product id, product name, and unit price of every product.
SELECT Products.ProductName, Products.ProductID, Products.UnitPrice 
FROM northwind.Products;
-- Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price.
SELECT ProductName,ProductID,UnitPrice 
FROM northwind.Products
ORDER BY UnitPrice ASC;
-- What are the products that we carry where the unit price is $7.50 or less?
SELECT ProductName,ProductID,UnitPrice,UnitPrice 
FROM northwind.Products
WHERE UnitPrice <= 7.50;
-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.
SELECT ProductName,ProductID,UnitPrice,UnitsInStock
FROM northwind.Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name.
SELECT DISTINCT ProductName,ProductID,UnitPrice,UnitsInStock
FROM northwind.Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

-- What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name.
SELECT DISTINCT ProductName,ProductID,UnitPrice,UnitsInStock,UnitsOnOrder
FROM northwind.Products
WHERE UnitsInStock = 0 
AND UnitsOnOrder >= 1
ORDER BY ProductName ASC;

-- What is the name of the table that holds the types (categories) of the items Northwind sells?
SELECT * FROM northwind.Products
-- Examine the Products table. How does it identify the type (category) of each item sold? Write a query to list all of the seafood items we carry.
SELECT * FROM northwind.Products
WHERE CategoryID = 8;

-- Write a query to list all of the seafood items we carry.
SELECT ProductName
FROM northwind.Products
WHERE CategoryID = 8;
-- What are the first and last names of all of the Northwind employees?
SELECT FirstName, LastName
FROM northwind.Employees
-- What employees have "manager" in their titles?
SELECT * 
FROM northwind.Employees
WHERE Title LIKE '%Manager';

-- List the distinct job titles in employees.
SELECT DISTINCT Title
FROM northwind.Employees
 
-- What employees have a salary that is between $200 0 and $2500?
SELECT * 
FROM northwind.Employees
WHERE Salary BETWEEN 2000 AND 2500;

-- List all the information about all of Northwind's suppliers.
SELECT * 
FROM northwind.Suppliers

-- Examine the Products table. How do you know what supplier supplies each product? Write a query to list all the items that "Tokyo Traders"supplies to Northwind
SELECT p.ProductName, s.CompanyName
FROM northwind.Products p
JOIN northwind.Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.CompanyName = 'Tokyo Traders';


