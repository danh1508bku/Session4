----1
SELECT *
FROM customers
WHERE full_name ILIKE '%nguyen%';

----2
SELECT *
FROM products
WHERE price BETWEEN 500000 AND 2000000;

----3
SELECT *
FROM customers
WHERE phone IS NULL;

----4
SELECT *
FROM products
ORDER BY price DESC
LIMIT 5;

----5
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 5 OFFSET 0;

----6
SELECT city, COUNT(DISTINCT customer_id) AS total_customers
FROM customers
GROUP BY city;

----7
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-04-01' AND '2024-04-07';

----8
SELECT *
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM order_products op
    WHERE op.product_id = p.product_id
);
