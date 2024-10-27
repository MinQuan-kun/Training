-- Sử dụng INNER JOIN
-- Từ bảng Products và Categories, hãy đưa ra
-- các thông tin sau đây:
-- _Mã thể loại
-- _Tên thể loại
-- _Số lượng sản phẩm
SELECT CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	COUNT(SP.ProductID) AS "Số lượng sản phẩm"
FROM Products SP
INNER JOIN Categories CT ON CT.CategoryID = SP.CategoryID
GROUP BY CT.CategoryName, CT.CategoryID
