-- Lấy thông tin về các sản phẩm có số lượng tồn kho
-- ít hơn số lượng tồn kho trung bình của tất cả sản phẩm

SELECT *
FROM Products SP
WHERE SP.UnitsInStock <(
SELECT AVG(UnitsInStock)
FROM Products
