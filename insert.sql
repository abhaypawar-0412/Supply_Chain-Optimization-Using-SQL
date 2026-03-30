-- Populate the Suppliers table
INSERT INTO Suppliers (SupplierID, Name, Region, ContactNumber, Rating) VALUES
(1, 'Alpha Supply Co.', 'North America', '555-1234', 4.5),
(2, 'Beta Traders', 'Europe', '555-5678', 4.7),
(3, 'Gamma Logistics', 'Asia', '555-9101', 4.6);

-- Populate the Products table
INSERT INTO Products (ProductID, Name, Category, UnitCost) VALUES
(1, 'Widget A', 'Gadgets', 15.99),
(2, 'Widget B', 'Gadgets', 12.99),
(3, 'Widget C', 'Accessories', 8.49);

-- Populate the Inventory table
INSERT INTO Inventory (ProductID, StockLevel, ReorderLevel, WarehouseLocation) VALUES
(1, 100, 20, 'A1'),
(2, 50, 10, 'B2'),
(3, 200, 30, 'C3');

-- Populate the Orders table
INSERT INTO Orders (OrderID, SupplierID, ProductID, OrderDate, DeliveryDate, Quantity, TotalCost) VALUES
(1, 1, 1, '2025-01-01', '2025-01-05', 20, 319.80),
(2, 2, 2, '2025-01-02', NULL, 10, 129.90),
(3, 3, 3, '2025-01-03', '2025-01-07', 15, 127.35);
