-- Create the Suppliers table
CREATE TABLE Suppliers (
    SupplierID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Region TEXT NOT NULL,
    ContactNumber TEXT,
    Rating REAL
);

-- Create the Products table
CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Category TEXT,
    UnitCost REAL NOT NULL
);

-- Create the Inventory table
CREATE TABLE Inventory (
    ProductID INTEGER PRIMARY KEY,
    StockLevel INTEGER NOT NULL,
    ReorderLevel INTEGER NOT NULL,
    WarehouseLocation TEXT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    SupplierID INTEGER NOT NULL,
    ProductID INTEGER NOT NULL,
    OrderDate TEXT NOT NULL,
    DeliveryDate TEXT,
    Quantity INTEGER NOT NULL,
    TotalCost REAL NOT NULL,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
