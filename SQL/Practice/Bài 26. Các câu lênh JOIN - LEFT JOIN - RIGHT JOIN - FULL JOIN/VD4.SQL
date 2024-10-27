-- Sử dụng INNER JOIN, LEFT JOIN
-- từ bảng Products và Categories, hãy đưa ra
-- các thông tin sau đây:
-- _Mã thể loại
-- _Tên thể loại
-- _Tên sản phẩm

--INNER JOIN
SELECT 
	CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	SP.ProductName AS "Tên sản phẩm"
FROM  Categories CT
INNER JOIN  Products SP ON CT.CategoryID = SP.CategoryID

--LEFT JOIN
SELECT 
	CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	SP.ProductName AS "Tên sản phẩm"
FROM  Categories CT
LEFT JOIN  Products SP ON SP.CategoryID = CT.CategoryID 