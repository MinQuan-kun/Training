-- Sử dụng FULL OUTER JOIN
-- Từ bảng Products và Categories, hãy in ra các thông
-- tin sau đây:
-- _Mã thể loại
-- _Tên thể loại
-- _Mã sản phẩm
-- _Tên sản phẩm
SELECT 
	CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	SP.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm"
FROM Products SP
FULL JOIN Categories CT ON CT.CategoryID = SP.CategoryID