-- Customers
INSERT INTO Customers VALUES
          (1, 'Customer 1', 'Contact 1', 'Country 1'),
          (2, 'Customer 2', 'Contact 2', 'Country 2'),
          (3, 'Customer 3', 'Contact 3', 'Country 3'),
          (4, 'Customer 4', 'Contact 4', 'Country 4'),
          (5, 'Customer 5', 'Contact 5', 'Country 5');


-- Orders
INSERT INTO Orders VALUES
       (1, 1, '2024-01-01', 'City 1', 'Country 1'),
       (2, 2, '2024-01-02', 'City 2', 'Country 2'),
       (3, 3, '2024-01-03', 'City 3', 'Country 3'),
       (4, 4, '2024-01-04', 'City 4', 'Country 4'),
       (5, 5, '2024-01-05', 'City 5', 'Country 5'),
       (6, 1, '2024-01-06', 'City 6', 'Country 6'),
       (7, 2, '2024-01-07', 'City 7', 'Country 7'),
       (8, 3, '2024-01-08', 'City 8', 'Country 8'),
       (9, 4, '2024-01-09', 'City 9', 'Country 9'),
       (10, 5, '2024-01-10', 'City 10', 'Country 10');


-- Products
INSERT INTO Products VALUES
     (1, 'Product 1', 1, 1, 10.00),
     (2, 'Product 2', 2, 1, 20.00),
     (3, 'Product 3', 3, 2, 15.00),
     (4, 'Product 4', 4, 2, 25.00),
     (5, 'Product 5', 5, 3, 30.00),
     (6, 'Product 6', 1, 1, 12.00),
     (7, 'Product 7', 2, 1, 22.00),
     (8, 'Product 8', 3, 2, 17.00),
     (9, 'Product 9', 4, 2, 27.00),
     (10, 'Product 10', 5, 3, 32.00),
     (11, 'Product 11', 1, 1, 11.00),
     (12, 'Product 12', 2, 1, 21.00),
     (13, 'Product 13', 3, 2, 16.00),
     (14, 'Product 14', 4, 2, 26.00),
     (15, 'Product 15', 5, 3, 31.00);


-- OrderDetails
INSERT INTO OrderDetails VALUES
     (1, 1, 5, 10.00),
     (1, 2, 3, 20.00),
     (2, 3, 2, 15.00),
     (2, 4, 4, 25.00),
     (3, 5, 1, 30.00),
     (3, 1, 6, 12.00),
     (4, 2, 3, 20.00),
     (4, 3, 2, 15.00),
     (5, 4, 4, 25.00),
     (5, 5, 1, 30.00),
     (6, 1, 5, 10.00),
     (6, 2, 3, 20.00),
     (7, 3, 2, 15.00),
     (7, 4, 4, 25.00),
     (8, 5, 1, 30.00),
     (8, 1, 6, 12.00),
     (9, 2, 3, 20.00),
     (9, 3, 2, 15.00),
     (10, 4, 4, 25.00),
     (10, 5, 1, 30.00);
