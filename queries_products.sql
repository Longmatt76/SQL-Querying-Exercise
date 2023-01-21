-- Comments in SQL Start with dash-dash --


-- query 1-- 
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('chair', 44.00, false);

--query 2-- 
products_db=# INSERT INTO products (name, price, can_be_returned)
products_db-# VALUES ('stool', 25.99, true);

--query 3--
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('table',124.00, false);

--query 4--
products_db=# SELECT * FROM products

--query 5--
products_db=# SELECT name FROM products;

--query 6--
products_db=# SELECT name, price FROM products;

--query 7--
products_db=# INSERT INTO products (name, price, can_be_returned)
VALUES ('donkey', 99.99, false);

--query 8--
products_db=# SELECT * FROM products
WHERE can_be_returned =true;

--query 9--
products_db=# SELECT * FROM products
products_db-# WHERE price < 44.00;

--query 10--
products_db=# SELECT * FROM products
products_db-# WHERE price BETWEEN 22.50 AND 99.99;

--query 11--
products_db=# UPDATE products SET price = price - 20;

--query 12--
DELETE FROM products WHERE price < 25;

--query 13--
products_db=# UPDATE products SET price = price + 20;

--query 14--
products_db=# UPDATE products SET can_be_returned = true;