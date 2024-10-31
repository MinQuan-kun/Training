-- (FULL JOIN): Hãy liệt kê tên danh mục và tên nhà cung cấp
-- của các sản phẩm trong bảng "Products", bao gồm cả các
-- danh mục và nhà cung cấp không có sản phẩm 
SELECT 
	CT.CategoryName AS "Danh mục",
	NCC.ContactName AS "Tên nhà cung cấp",
	SP.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm"
FROM Products SP
FULL JOIN Suppliers NCC ON NCC.SupplierID = SP.SupplierID
FULL JOIN Categories CT ON CT.CategoryID = SP.CategoryID
GROUP BY SP.ProductID, CT.CategoryName, NCC.ContactName,SP.ProductName
