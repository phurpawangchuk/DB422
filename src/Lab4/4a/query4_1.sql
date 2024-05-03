-- a. Retrieve all products from the "Products" table.
SELECT * from Products;

-- b. Retrieve all products that belong to the "Clothing" category.
SELECT * from Products where category_id=2

-- c. Retrieve the names and prices of all products that cost less than $100.
SELECT product_name, price from Products WHERE price < 100

-- d. Update the price of the "MacBook Pro" to $1399.
UPDATE Products SET price=1399 WHERE product_name='MacBook Pro'

-- e. Delete the "Dining Table" product from the "Products" table.
DELETE from Products WHERE product_name='Dining Table'

-- f. Retrieve the names and prices of all products that belong to the "Electronics" category.
SELECT product_name, price from Products WHERE category_id=1

-- g. Retrieve the names of all products that have a price greater than $500.
SELECT product_name from Products WHERE price>500;

-- h. Retrieve the names and prices of the top 3 most expensive products.
SELECT product_name,price FROM Products ORDER BY price DESC LIMIT 3;

-- i. Update the price of all products in the "Clothing" category to be 10% higher.
UPDATE Products SET price=(price+0.1*price) WHERE category_id=2;

-- j. Delete all products that have a price less than $50.
DELETE from Products WHERE price < 50;

-- k. Retrieve the names and prices of all products sorted in descending order by price.
SELECT product_name, price from Products ORDER by price DESC;

-- l. Retrieve the names and categories of all products, sorted in ascending order by
SELECT product_name, category_name from Products P
    INNER JOIN Categories C ON C.category_id=P.category_id
    ORDER BY category_name ASC;

-- m. Delete all products that belong to the "Home" category.
DELETE from Products where category_id=3;

-- n. Retrieve the names and prices of all products that have a price between $100 and $500.
SELECT product_name,price from Products WHERE price BETWEEN 100 AND 500;

-- o. Update the price of all products in the "Electronics" category to be 5% lower.
UPDATE Products SET price=price-0.05*price WHERE category_id=1