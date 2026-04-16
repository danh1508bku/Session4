CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50),
    gpa DECIMAL(3,2)
);

INSERT INTO students (name, age, major, gpa) VALUES
('An', 20, 'CNTT', 3.5),
('Binh', 21, 'Toán', 3.2),
('Cường', 22, 'CNTT', 3.8),
('Dương', 20, 'Vật lý', 3.0),
('Em', 21, 'CNTT', 2.9);


---them sinh vien moi
INSERT INTO students (name, age, major, gpa)
VALUES ('Hùng', 23, 'Hóa học', 3.4);

---Cập nhật GPA của sinh viên "Bình"
UPDATE students
SET gpa = 3.6
WHERE name = 'Bình';

---Xóa sinh viên có GPA < 3.0
DELETE FROM students
WHERE gpa < 3.0;

---Liệt kê tên và chuyên ngành, sắp xếp GPA giảm dần
SELECT name, major
FROM students
ORDER BY gpa DESC;

---Liệt kê tên sinh viên duy nhất thuộc chuyên ngành CNTT
SELECT DISTINCT name
FROM students
WHERE major = 'CNTT';

---Liệt kê sinh viên có GPA từ 3.0 đến 3.6
SELECT *
FROM students
WHERE gpa BETWEEN 3.0 AND 3.6;

---Sinh viên có tên bắt đầu bằng 'C'
SELECT *
FROM students
WHERE name ILIKE 'C%';

---3 sinh viên đầu tiên theo tên tăng dần
SELECT *
FROM students
ORDER BY name ASC
LIMIT 3;
