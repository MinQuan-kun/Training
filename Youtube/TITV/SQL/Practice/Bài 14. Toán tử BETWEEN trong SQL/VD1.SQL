-- Lấy danh sách các sản phẩm có giá bán trong khoảng 
-- từ 10 đến 20 đô la
SELECT *
FROM Products SP
WHERE SP.UnitPrice BETWEEN 10 AND 20;