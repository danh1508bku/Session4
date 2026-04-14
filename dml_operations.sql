-- =======
-- INSERT
-- =======
INSERT INTO customers (full_name, email, phone, city, join_date) VALUES
('Nguyen Van A', 'a.nguyen@gmail.com', '0901234567', 'Ho Chi Minh', '2024-01-10'),
('Tran Thi B', 'b.tran@gmail.com', '0912345678', 'Ha Noi', '2024-02-15'),
('Le Van C', 'c.le@gmail.com', '0923456789', 'Da Nang', '2024-03-20'),
('Pham Thi D', 'd.pham@gmail.com', '0934567890', 'Can Tho', '2024-01-25'),
('Hoang Van E', 'e.hoang@gmail.com', '0945678901', 'Hai Phong', '2024-02-05'),
('Vo Thi F', 'f.vo@gmail.com', '0956789012', 'Hue', '2024-03-01'),
('Dang Van G', 'g.dang@gmail.com', '0967890123', 'Ho Chi Minh', '2024-02-18'),
('Bui Thi H', 'h.bui@gmail.com', '0978901234', 'Ha Noi', '2024-01-30'),
('Do Van I', 'i.do@gmail.com', '0989012345', 'Da Nang', '2024-03-10'),
('Ngo Thi K', 'k.ngo@gmail.com', NULL, 'Can Tho', '2024-02-28');


INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('iPhone 13', 'Electronics', 20000000, 50),
('Samsung Galaxy S21', 'Electronics', 18000000, 40),
('Laptop Dell XPS', 'Electronics', 30000000, 20),
('Tai nghe Sony', 'Electronics', 2000000, 100),
('Smart Watch', 'Electronics', 5000000, 60),

('Ao thun nam', 'Clothing', 200000, 200),
('Quan jean nu', 'Clothing', 400000, 150),
('Ao khoac', 'Clothing', 800000, 80),
('Giay sneaker', 'Clothing', 1200000, 70),
('Non luoi trai', 'Clothing', 150000, 120),

('Banh mi', 'Food', 20000, 500),
('Sua tuoi', 'Food', 30000, 300),
('Ca phe', 'Food', 50000, 250),
('Mi goi', 'Food', 10000, 600),
('Tra sua', 'Food', 40000, 0);


INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-04-01', 0, 'PENDING'),
(2, '2024-04-02', 0, 'CONFIRMED'),
(3, '2024-04-03', 0, 'SHIPPED'),
(4, '2024-04-04', 0, 'CANCELLED'),
(5, '2024-04-05', 0, 'COMPLETED'),
(6, '2024-04-06', 0, 'PENDING'),
(7, '2024-04-07', 0, 'CONFIRMED'),
(8, '2024-04-08', 0, 'SHIPPED');

-- =======
-- UPDATE
-- =======
UPDATE products
SET price = price * 1.1
WHERE category = 'Electronics';

UPDATE customers
SET phone = '0909999999'
WHERE email = 'a.nguyen@gmail.com';

UPDATE orders
SET status = 'CONFIRMED'
WHERE status = 'PENDING';

-- =======
-- DELETE
-- =======
DELETE FROM products
WHERE stock_quantity = 0;

DELETE FROM customers c
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
);
