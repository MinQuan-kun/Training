-- Từ bảng Products và Categories, hãy tìm các sản
-- phẩm thuộc danh mục 'SeaFood'(Đồ hải sản) in ra
-- các thông tin sau đây:
-- - Mã thể loại
-- -Tên thể loại
-- -Mã sản phẩm
-- -Tên sản phẩm

--C1
SELECT 
	CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	SP.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm"
FROM Products SP, Categories CT
WHERE SP.CategoryID = CT.CategoryID
AND CT.CategoryName = 'SeaFood'

--C2
SELECT 
	CT.CategoryID AS "Mã thể loại",
	CT.CategoryName AS "Tên thể loại",
	SP.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm"
FROM Products SP
JOIN Categories CT SP.CategoryID = CT.CategoryID
WHERE 
CT.CategoryName = 'SeaFood'