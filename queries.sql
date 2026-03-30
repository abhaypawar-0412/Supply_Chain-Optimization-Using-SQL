-- Query 1: Join Suppliers and Orders to identify which suppliers have pending deliveries
SELECT s.Name AS SupplierName, o.OrderID, o.OrderDate, o.Quantity, o.DeliveryDate
FROM Suppliers s
JOIN Orders o ON s.SupplierID = o.SupplierID
WHERE o.DeliveryDate IS NULL;

-- Query 2: Calculate the total value of inventory
SELECT SUM(i.StockLevel * p.UnitCost) AS TotalInventoryValue
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID;

-- Query 3: Find products with stock levels below the reorder threshold
SELECT p.Name AS ProductName, i.StockLevel, i.ReorderLevel
FROM Inventory i
JOIN Products p ON i.ProductID = p.ProductID
WHERE i.StockLevel < i.ReorderLevel;

-- Query 4: Identify the top-rated supplier(s)
SELECT Name, Rating
FROM Suppliers
WHERE Rating = (SELECT MAX(Rating) FROM Suppliers);

-- Query 5: Analyze order trends by month (using SQLite's strftime function for date extraction)
SELECT strftime('%Y-%m', OrderDate) AS OrderMonth, COUNT(*) AS OrderCount
FROM Orders
GROUP BY OrderMonth
ORDER BY OrderMonth;
