-- Từ bảng Products và Categories,
-- hãy in ra các thông tin sau đây:
-- -Mã thể loại
-- -Tên thể loại
-- -Mã sản phẩm
-- -Tên sản phẩm

--C1
SELECT CT.CategoryID, 
	CT.CategoryName,
	SP.ProductID,
	ProductName
FROM Categories CT, Products SP
WHERE CT.CategoryID = SP.CategoryID
--C2
SELECT SP.CategoryID,
	CategoryName,
	ProductID,
	ProductName
FROM Products SP
	JOIN Categories CT ON CT.CategoryID = SP.CategoryID;
