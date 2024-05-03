CREATE TABLE Customers(
    CustomerID int not null,
    CustomerName varchar(255),
    ContactName varchar(255),
    Country varchar(255),
    PRIMARY KEY(CustomerID)
);

CREATE TABLE Orders (
    OrderID int not null,
    CustomerID int,
    OrderDate date,
    ShipCity varchar(255),
    ShipCountry varchar(255),
    PRIMARY KEY(OrderID),
    FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID int not null,
    ProductName varchar(255),
    SupplierID int,
    CategoryID int,
    UnitPrice int,
    PRIMARY KEY(ProductID)
);

CREATE TABLE OrderDetails (
    OrderID int not null,
    ProductID int not null,
    Quantity int,
    UnitPrice int,
    PRIMARY KEY(OrderID,ProductID),
    FOREIGN KEY(OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY(ProductID) REFERENCES Products(ProductID)
);