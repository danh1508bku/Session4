---Chèn dữ liệu mới
INSERT INTO students (full_name, gender, birth_year, major, gpa)
VALUES ('Phan Hoàng Nam', 'Nam', 2003, 'CNTT', 3.8);

---Cập nhật dữ liệu
UPDATE students
SET gpa = 3.4
WHERE full_name = 'Lê Quốc Cường';

---Xóa dữ liệu (GPA NULL)
DELETE FROM students
WHERE gpa IS NULL;

---Truy vấn: Sinh viên CNTT có GPA ≥ 3.0 (lấy 3 dòng đầu)
SELECT *
FROM students
WHERE major = 'CNTT' AND gpa >= 3.0
LIMIT 3;

---Loại bỏ trùng lặp (danh sách ngành)
SELECT DISTINCT major
FROM students;

---Sắp xếp
SELECT *
FROM students
WHERE major = 'CNTT'
ORDER BY gpa DESC, full_name ASC;

---Tìm kiếm tên bắt đầu bằng "Nguyễn"
SELECT *
FROM students
WHERE full_name ILIKE 'Nguyễn%';

---Khoảng giá trị năm sinh
SELECT *
FROM students
WHERE birth_year BETWEEN 2001 AND 2003;
