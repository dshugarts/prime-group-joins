-- 5.Get the number of orders for each customer. NOTE: It is OK if those without 
-- orders are not included in results.
SELECT customers.*, COUNT(orders.id) FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;

-- 6.How many customers do we have?
SELECT COUNT(id)
FROM customers;

--7.How many products do we carry?
SELECT COUNT(id)
FROM products;

--8.What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand)
FROM warehouse_product
WHERE product_id=6;