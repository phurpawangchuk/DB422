-- a. What is the total revenue generated by each customer?
    SELECT CustomeNname,sum(Quantity*UnitPrice) as Total_Revenue
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails d ON d.OrderID=o.OrderID
    GROUP BY CustomerName;

-- b. What is the total revenue generated by each country?
    SELECT Country,sum(Quantity*UnitPrice) as Total_Revenue
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails d ON d.OrderID=o.OrderID
    GROUP BY Country;

-- c. What is the total revenue generated by each category?
     SELECT CategoryID,sum(d.Quantity*d.UnitPrice) as Total_Revenue
     FROM OrderDetails d
     INNER JOIN Products p ON p.ProductID=d.ProductID
     GROUP BY CategoryID;

-- d. Which customer has spent the most amount of money?
    SELECT CustomerName,max(Quantity*UnitPrice) as most_spent
    FROM OrderDetails d
    INNER JOIN Orders o ON o.OrderID=d.OrderID
    INNER JOIN Customers c ON c.CustomerID=o.CustomerID
    GROUP BY CustomerName
    HAVING most_spent =
    (
        SELECT max(Quantity*UnitPrice)
        FROM OrderDetails
    );

-- e. Which country has the highest average order value?
    SELECT Country, max(Quantity*UnitPrice) as avgOrder
    FROM OrderDetails od
    INNER JOIN Orders o ON o.OrderID=od.OrderID
    INNER JOIN Customers c ON c.CustomerID=o.CustomerID
    GROUP BY Country
    HAVING avgOrder =
    (
        SELECT avg(Quantity*UnitPrice)
        FROM OrderDetails
    );

-- f. Which category has the highest average product price?
    SELECT CategoryID,avg(UnitPrice) as avgPrice
    FROM Products
    GROUP BY CategoryID
    ORDER BY avgPrice DESC LIMIT 1;


-- g. What is the total quantity of each product that has been ordered?
    SELECT ProductName,count(Quantity) as Qty_Ordered
    FROM Products p
    INNER JOIN OrderDetails o ON o.ProductID=p.ProductID
    GROUP BY ProductName;

-- h. What is the total quantity of each product that has been ordered by each
-- customer?
    SELECT CustomerName,ProductName,count(Quantity) as Qty_Ordered
    FROM Products p
    INNER JOIN OrderDetails od ON od.ProductID=p.ProductID
    INNER JOIN Orders o ON o.OrderID=od.OrderID
    INNER JOIN Customers c ON c.CustomerID=o.CustomerID
    GROUP BY CustomerName,ProductName

-- i. What is the total revenue generated by each customer for orders that were
-- shipped to a specific city?
    SELECT CustomerName,sum(Quantity*UnitPrice)
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=o.CustomerID
    INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
    WHERE ShipCity='City 1'
    GROUP BY CustomerName

-- j. Which customers have placed orders for products from more than one category?
    SELECT CustomerName,ProductName,count(CategoryID) as catCount
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
    INNER JOIN Products p ON p.ProductID=od.ProductID
    GROUP BY CustomerName,ProductName
    HAVING catCount > 1

-- k. Which customers have placed orders for products from a specific category
    SELECT DISTINCT CustomerName,ProductName,CategoryID
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
    INNER JOIN Products p ON p.ProductID=od.ProductID;

-- l. Which products have been ordered by customers from a specific country?
    SELECT DISTINCT Country,CustomerName,ProductName
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
    INNER JOIN Products p ON p.ProductID=od.ProductID;

-- m. Which customers have ordered the most products?
     SELECT CustomerName,ProductName, count(od.ProductID)
     FROM Customers c
     INNER JOIN Orders o ON o.CustomerID=c.CustomerID
     INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
     INNER JOIN Products p ON p.ProductID=od.ProductID
     GROUP BY CustomerName,ProductName;

-- n. Which customers have ordered the most expensive products?
    SELECT CustomerName,c.CustomerID,ProductName,p.UnitPrice
    FROM Customers c
    INNER JOIN Orders o ON o.CustomerID=c.CustomerID
    INNER JOIN OrderDetails od ON od.OrderID=o.OrderID
    INNER JOIN Products p ON p.ProductID=od.ProductID
    WHERE p.UnitPrice = (
        SELECT max(UnitPrice)
        FROM Products
    )
