--1
SELECT customers.first_name, customers.last_name, addresses.address_type, addresses.street, addresses.city, addresses.state, addresses.zip
FROM addresses
JOIN customers on customers.id = addresses.customer_id;

--2
SELECT orders.id, orders.order_date, line_items.unit_price, line_items.quantity, orders.total
FROM line_items
JOIN orders on orders.id = line_items.order_id;

--3
SELECT warehouse.warehouse, products.description, warehouse_product.on_hand
FROM warehouse_product
JOIN products ON products.id=warehouse_product.product_id
JOIN warehouse ON warehouse.id=warehouse_product.warehouse_id
WHERE products.description='cheetos';

--4
SELECT warehouse.warehouse, products.description, warehouse_product.on_hand
FROM warehouse_product
JOIN products ON products.id=warehouse_product.product_id
JOIN warehouse ON warehouse.id=warehouse_product.warehouse_id
WHERE products.description='diet pepsi';

+-- 5.Get the number of orders for each customer. NOTE: It is OK if those without 
+-- orders are not included in results.
+SELECT customers.*, COUNT(orders.id) FROM customers
+JOIN addresses ON customers.id = addresses.customer_id
+JOIN orders ON orders.address_id = addresses.id
+GROUP BY customers.id;
+
+-- 6.How many customers do we have?
+SELECT COUNT(id)
+FROM customers;
+
+--7.How many products do we carry?
+SELECT COUNT(id)
+FROM products;
+
+--8.What is the total available on-hand quantity of diet pepsi?
+SELECT SUM(on_hand)
+FROM warehouse_product
+WHERE product_id=6;