DecodeLabs Data Analytics Internship — Project 3: SQL Data Analysis

Project Overview

This project involved writing and executing SQL queries to extract meaningful business insights from an e-commerce sales dataset as part of the DecodeLabs Data Analytics Internship Program.
The objective was to demonstrate proficiency in SQL by filtering, grouping, and aggregating raw transactional data into actionable business intelligence using structured relational logic.

Tools Used

1. DB Browser for SQLite
2. Microsoft Excel (for CSV export)

Dataset Summary

Table Name: orders                        
Total Records: 1,200 orders                  
Total Columns: 14                            
Source File: Datasetfordataanalytics.csv                   

Column Reference

Column1          
Date             
CustomerID       
Product         
Quantity         
UnitPrice        
ShippingAddress  
PaymentMethod    
OrderStatus      
TrackingNumber   
ItemsInCart      
CouponCode       
ReferralSource   
TotalPrice       

SQL Queries Written

Query 1 — View All Records (SELECT)
SELECT * FROM orders;
Purpose: Retrieve all 1,200 rows and 14 columns to confirm successful data import.

Query 2 — Filter Delivered Orders (WHERE)
SELECT Column1, CustomerID, Product, TotalPrice FROM orders WHERE OrderStatus = 'Delivered';
Purpose: Isolate only the orders that were successfully delivered to customers.
Result: 231 delivered orders identified out of 1,200 total.

Query 3 — Sort Orders by Total Price (ORDER BY)
SELECT Column1, Product, TotalPrice FROM orders ORDER BY TotalPrice DESC;
Purpose: Rank all orders from highest to lowest transaction value.
Result: The highest single order value was 3,456.40. The lowest was 11.39.

Query 4 — Count Orders Per Product (GROUP BY + COUNT)
SELECT Product, COUNT(*) AS NumberOfOrders FROM orders GROUP BY Product ORDER BY NumberOfOrders DESC;
Purpose: Determine which products are ordered most frequently.
Result: Printer - 181, Tablet - 179, Chair - 178, Laptop - 173, Desk - 170, Monitor - 163, Phone - 156

Query 5 — Total Revenue Per Product (GROUP BY + SUM)
SELECT Product, SUM(TotalPrice) AS TotalRevenue FROM orders GROUP BY Product ORDER BY TotalRevenue DESC;
Purpose: Identify which products generate the most revenue for the business.
Result: Chair — 195,620.11, Printer — 195,612.61, Laptop — 192,126.56, Tablet — 186,568.95, Monitor — 175,651.41, Desk — 167,459.93, Phone — 151,722.39

Query 6 — Average Order Value Per Payment Method (GROUP BY + AVG)
SELECT PaymentMethod, AVG(TotalPrice) AS AvgOrderValue FROM orders GROUP BY PaymentMethod ORDER BY AvgOrderValue DESC;
Purpose: Understand which payment methods are associated with higher spending.
Result: Credit Card — 1,127.55, Gift Card — 1,070.97, Cash — 1,056.04, Online — 1,017.22, Debit Card — 1,001.56

Query 7 — Count of Orders by Order Status (GROUP BY + COUNT)
SELECT OrderStatus, COUNT(*) AS OrderCount FROM orders GROUP BY OrderStatus
ORDER BY OrderCount DESC;
Purpose: Understand the distribution of order outcomes across the dataset.
Result: Cancelled — 250, Returned — 247, Pending — 237, Shipped — 235, Delivered — 231

Query 8 — Products With More Than 100 Orders (HAVING)
SELECT Product, COUNT(*) AS NumberOfOrders FROM orders GROUP BY Product HAVING NumberOfOrders > 100;
Purpose: Use HAVING to filter grouped results and identify high-volume products.
Result: All 7 products exceeded 100 orders, confirming consistent demand
across the entire product catalogue.

Key Business Insights

1. Chair and Printer are the top revenue-generating products, contributing nearly
   equal amounts of approximately 195,000 each.

2. Credit Card customers spend the most on average (1,127.55 per order),
   making them the highest-value payment segment.

3. Cancelled and Returned orders combined account for 497 out of 1,200 orders
   (41.4%) — a significant business concern worth investigating further.

4. All 7 products exceeded 100 orders, indicating no single product is
   underperforming in terms of order volume.

5. Total revenue across all 1,200 orders was 1,264,761.96.


Chinonso Cynthia Onyemuze
Program: DecodeLabs Data Analytics Internship 
