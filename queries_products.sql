-- Comments in SQL Start with dash-dash --
-- Add a chair
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);

-- Add a stool
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

-- Add a table
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);


-- Display all products
SELECT * FROM products;


-- Display product names
SELECT name FROM products;

-- Display names and prices of products
SELECT name, price FROM products;


-- Add a lamp
INSERT INTO products (name, price, can_be_returned) VALUES ('lamp', 35.50, true);


-- Display products that can be returned
SELECT * FROM products WHERE can_be_returned = true;

-- Display products priced under 44.00
SELECT * FROM products WHERE price < 44.00;


-- Display products priced between 22.50 and 99.99
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;


-- Decrease all prices by 20
UPDATE products SET price = price - 20;

-- Remove products priced under 25.00
DELETE FROM products WHERE price < 25.00;

-- Increase all remaining prices by 20
UPDATE products SET price = price + 20;

-- Make all products returnable
UPDATE products SET can_be_returned = true;


