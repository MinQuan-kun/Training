-- Sử dụng INNER JOIN, LEFT JOIN
-- Từ bảng Products và Categories, hãy đưa ra
-- các thông tin sau đây:
-- _Mã thể loại
-- _Tên thể loại
-- _Số lượng sản phẩm

--INNER JOIN
SELECT CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	COUNT(SP.ProductID) AS "Số lượng sản phẩm"
FROM Categories CT
INNER JOIN Products SP ON CT.CategoryID = SP.CategoryID
GROUP BY CT.CategoryName, CT.CategoryID

--LEFT JOIN
SELECT CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	COUNT(SP.ProductID) AS "Số lượng sản phẩm"
FROM Categories CT
LEFT JOIN Products SP ON CT.CategoryID = SP.CategoryID
GROUP BY CT.CategoryName, CT.CategoryID
