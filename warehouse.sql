-- Get all customers and their addresses.
SELECT * 
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id;

-- Get all orders and their line items.
SELECT *
FROM orders
JOIN line_items
ON orders.id = line_items.order_id;
-- Which warehouses have cheetos?
SELECT * 
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON products.id = warehouse_product.product_id
WHERE description = 'cheetos';

ANSWER = DELTA!
-- Which warehouses have diet pepsi?
SELECT * 
FROM warehouse
JOIN warehouse_product
ON warehouse.id = warehouse_product.warehouse_id
JOIN products
ON products.id = warehouse_product.product_id
WHERE description = 'diet pepsi';

ANSWER = ALPHA, DELTA, GAMMA!
-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT * 
FROM customers
JOIN addresses
ON customers.id = addresses.customer_id
JOIN orders
ON addresses.id = orders.address_id;

Lisa = 3
Charles = 1
Lucy = 3
George = 0
-- How many customers do we have?
SELECT COUNT(first_name)
FROM customers;

count = 4
-- How many products do we carry?
SELECT COUNT(description)
FROM products;

count = 7
-- What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand)
FROM products
JOIN warehouse_product
ON products.id = warehouse_product.product_id
WHERE id = 6;

sum = 92 --diet pepsi available on-hand

