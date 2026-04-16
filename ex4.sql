---Chèn dữ liệu mới
INSERT INTO products (name, category, price, stock, manufacturer)
VALUES ('Chuột không dây Logitech M170', 'Phụ kiện', 300000, 20,

---Cập nhật dữ liệu (tăng giá Apple 10%)
UPDATE products
SET price = price * 1.10
WHERE manufacturer = 'Apple';

---Xóa dữ liệu (stock = 0)
DELETE FROM products
WHERE stock = 0;

---Lọc theo điều kiện (price BETWEEN)
SELECT *
FROM products
WHERE price BETWEEN 1000000 AND 30000000;

---Lọc giá trị NULL
SELECT *
FROM products
WHERE stock IS NULL;

---Loại bỏ trùng (hãng sản xuất duy nhất)
SELECT DISTINCT manufacturer
FROM products;

---Sắp xếp dữ liệu
SELECT *
FROM products
ORDER BY price DESC, name ASC;

---Tìm kiếm
SELECT *
FROM products
WHERE name ILIKE '%laptop%';

---Giới hạn kết quả (TOP 2 theo giá giảm dần)
SELECT *
FROM products
ORDER BY price DESC
LIMIT 2;
