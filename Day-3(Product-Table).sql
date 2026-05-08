use  company;
CREATE TABLE Products (
    id INT,
    name VARCHAR(50),
    price INT,
    rating FLOAT
);

INSERT INTO Products VALUES
(1, 'Laptop', 60000, 4.5),
(2, 'Phone', 20000, 4.2),
(3, 'Tablet', 15000, 4.0),
(4, 'Headphones', 2000, 4.8),
(5, 'Keyboard', 1000, 3.9);
-- ALL PRODUCTS
SELECT  * FROM Products;
-- Products whose price <20000
SELECT * FROM Products WHERE price<20000;
--  Products sorted by price
SELECT * FROM Products ORDER BY price;
-- Top 3 most expensive products
SELECT * FROM Products ORDER BY price DESC LIMIT 3;
-- Products with rating >4.0
SELECT * FROM Products WHERE rating>4.0;
-- Product with price>50000 and rating>4.2
SELECT * FROM Products WHERE price>50000 AND rating >4.2;
-- Sort Product with rating (highest first)
SELECT * FROM Products ORDER BY rating DESC;