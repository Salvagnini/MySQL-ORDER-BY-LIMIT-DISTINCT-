INSERT INTO products(product, price, rating, category, brand) VALUES('iPhone 12','1100','4.69','smartphones', 'Apple');
INSERT INTO products(product, price, rating, category, brand) VALUES('iPhone 11','979','4.69','smartphones', 'Apple');
INSERT INTO products(product, price, rating, category, brand) VALUES('MacBook Air,','1300','4.72','laptops', 'Apple');
INSERT INTO products(product, price, rating, category, brand) VALUES('iPhone 14','1549','4.69','smartphones', 'Apple');
INSERT INTO products(product, price, rating, category, brand) VALUES('iPhone 13,','1349','4.69','smartphones', 'Apple');
INSERT INTO products(product, price, rating, category, brand) VALUES('MacBook,','950','4.69','laptops', 'Apple');
-- 2
SELECT COUNT(Price) FROM products WHERE category='laptops';
-- 3
SELECT category, COUNT(product) FROM products GROUP BY category;


-- add table (customer) 
INSERT INTO customer(name, productID) VALUES('Mike','9');
INSERT INTO customer(name, productID) VALUES('Bob','5');
INSERT INTO customer(name, productID) VALUES('Nikola','11');
INSERT INTO customer(name, productID) VALUES('Mike','14');
INSERT INTO customer(name, productID) VALUES('Nikola','3');
INSERT INTO customer(name, productID) VALUES('Mike','8');
INSERT INTO customer(name, productID) VALUES('Mike','9');
-- 4
SELECT category, COUNT(DISTINCT brand) FROM products GROUP BY category;
-- 5
SELECT name, COUNT(name) AS Quantity FROM customer GROUP BY name ORDER BY Quantity DESC;
-- 6
SELECT category, product, price FROM customer JOIN products ON customer.productID=products.id ORDER BY category, price DESC;
