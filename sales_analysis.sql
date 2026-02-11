##STEP 1: Create Database
CREATE DATABASE Sales_Project;
USE Sales_Project;

##STEP 2: Create Table
CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

##STEP 3: Insert 30 Rows Data
INSERT INTO sales VALUES
(1,'2024-01-05','Amit','Delhi','Laptop','Electronics',1,50000),
(2,'2024-01-10','Priya','Mumbai','Mobile','Electronics',2,20000),
(3,'2024-01-12','Ravi','Delhi','Tablet','Electronics',1,15000),
(4,'2024-01-15','Sneha','Kolkata','Chair','Furniture',4,2500),
(5,'2024-01-18','Arjun','Chennai','Desk','Furniture',2,7000),
(6,'2024-02-02','Neha','Delhi','Laptop','Electronics',1,52000),
(7,'2024-02-05','Rahul','Mumbai','Mobile','Electronics',3,18000),
(8,'2024-02-10','Pooja','Kolkata','Sofa','Furniture',1,20000),
(9,'2024-02-14','Karan','Delhi','Headphones','Electronics',2,3000),
(10,'2024-02-18','Anjali','Chennai','Table','Furniture',1,8000),
(11,'2024-03-01','Amit','Delhi','Mobile','Electronics',1,21000),
(12,'2024-03-05','Priya','Mumbai','Laptop','Electronics',1,55000),
(13,'2024-03-07','Ravi','Delhi','Chair','Furniture',6,2400),
(14,'2024-03-10','Sneha','Kolkata','Desk','Furniture',1,7500),
(15,'2024-03-12','Arjun','Chennai','Tablet','Electronics',2,14000),
(16,'2024-03-15','Neha','Delhi','Sofa','Furniture',1,22000),
(17,'2024-03-18','Rahul','Mumbai','Headphones','Electronics',4,2800),
(18,'2024-03-20','Pooja','Kolkata','Mobile','Electronics',1,19000),
(19,'2024-04-01','Karan','Delhi','Laptop','Electronics',2,48000),
(20,'2024-04-05','Anjali','Chennai','Chair','Furniture',3,2600),
(21,'2024-04-10','Amit','Delhi','Desk','Furniture',1,7200),
(22,'2024-04-12','Priya','Mumbai','Tablet','Electronics',1,16000),
(23,'2024-04-15','Ravi','Delhi','Headphones','Electronics',3,3200),
(24,'2024-04-18','Sneha','Kolkata','Laptop','Electronics',1,53000),
(25,'2024-05-02','Arjun','Chennai','Mobile','Electronics',2,21000),
(26,'2024-05-05','Neha','Delhi','Table','Furniture',1,8500),
(27,'2024-05-08','Rahul','Mumbai','Sofa','Furniture',1,23000),
(28,'2024-05-12','Pooja','Kolkata','Chair','Furniture',5,2500),
(29,'2024-05-15','Karan','Delhi','Tablet','Electronics',1,15500),
(30,'2024-05-18','Anjali','Chennai','Laptop','Electronics',1,60000);
## Q1:Show all data
SELECT * FROM sales;

##Q2:Total Revenue
SELECT SUM(quantity * price) AS Total_Revenue FROM sales;


##Q3:Total Orders
SELECT COUNT(order_id) FROM sales;

##Q4:Sales by City
SELECT city, SUM(quantity * price) AS City_Sales
FROM sales
GROUP BY city;


##Q5:Top Selling Product
SELECT product, SUM(quantity) AS Total_Quantity
FROM sales
GROUP BY product
ORDER BY Total_Quantity DESC
LIMIT 1;


##Q6:Monthly Revenue
SELECT MONTH(order_date) AS Month,
       SUM(quantity * price) AS Revenue
FROM sales
GROUP BY MONTH(order_date);


##Q7:Category Wise Sales
SELECT category, SUM(quantity * price) AS Category_Sales
FROM sales
GROUP BY category;


##Q 8:Top 3 Customers by Revenue
SELECT customer_name,
       SUM(quantity * price) AS Total_Spent
FROM sales
GROUP BY customer_name
ORDER BY Total_Spent DESC
LIMIT 3;

##Q10:Average Order Value
SELECT AVG(quantity * price) AS Avg_Order_Value
FROM sales;


##Q10: Highest Single Order
SELECT *
FROM sales
ORDER BY (quantity * price) DESC
LIMIT 1;

##Q11:Find Revenue Per Product
SELECT product,
       SUM(quantity * price) AS Total_Revenue
FROM sales
GROUP BY product
ORDER BY Total_Revenue DESC;

##Q12:Find Customers Who Purchased More Than Once
SELECT customer_name,
       COUNT(order_id) AS Total_Orders
FROM sales
GROUP BY customer_name
HAVING COUNT(order_id) > 1;


##Q13Find Second Highest Revenue Order
SELECT *
FROM sales
ORDER BY (quantity * price) DESC
LIMIT 1 OFFSET 1;

##Q14:Find Month With Highest Sales
SELECT MONTH(order_date) AS Month,
       SUM(quantity * price) AS Revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY Revenue DESC
LIMIT 1;

## Description
###Performed Sales Data Analysis using SQL by creating structured database with 30+ records.
 Implemented aggregate functions, GROUP BY, ORDER BY, LIMIT, and revenue calculations to extract business 
 insights like top customers, monthly sales trends, and category performance.###

