-- Bạn hãy liệt kê tất cả các sản phẩm có số lượng trong kho(UnitslStock)
-- Thuộc khoảng nhỏ hơn 50 hoặc lớn hơn 100
SELECT *
FROM Products SP
WHERE 
SP.UnitsInStock < 50 
OR SP.UnitsInStock > 100 