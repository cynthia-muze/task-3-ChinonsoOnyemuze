Project 3: SQL Data Analysis
DecodeLabs Industrial Training | Batch 2026
Dataset: Orders Table (1200 rows)

Query 1: View all records
SELECT * FROM orders;

Query 2: Filter only Delivered orders
SELECT Column1, CustomerID, Product, TotalPrice 
FROM orders 
WHERE OrderStatus = 'Delivered';

Query 3: Sort orders by TotalPrice highest to lowest
SELECT Column1, Product, TotalPrice
FROM orders
ORDER BY TotalPrice DESC;

Query 4: Count number of orders per Product
SELECT Product, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY Product
ORDER BY NumberOfOrders DESC;

Query 5: Total revenue per Product
SELECT Product, SUM(TotalPrice) AS TotalRevenue
FROM orders
GROUP BY Product
ORDER BY TotalRevenue DESC;

Query 6: Average order value per Payment Method
SELECT PaymentMethod, AVG(TotalPrice) AS AvgOrderValue
FROM orders
GROUP BY PaymentMethod
ORDER BY AvgOrderValue DESC;

Query 7: Count of orders by Order Status
SELECT OrderStatus, COUNT(*) AS OrderCount
FROM orders
GROUP BY OrderStatus
ORDER BY OrderCount DESC;

Query 8: Products with more than 100 orders
SELECT Product, COUNT(*) AS NumberOfOrders
FROM orders
GROUP BY Product
HAVING NumberOfOrders > 100;