-- (FULL JOIN): Liệt kê tên danh mục và tên
-- nhà cung cấp của các sản phẩm trong bảng
-- "Products".Bao gồm cả các danh mục và nhà
-- cung cấp không có sản phẩm.Sử dụng FULL JOIM
-- hoặc kết hợp LEFT JOIN và RIGHT JOIN để lấy 
-- thông tin về danh mục và nhà cung cấp 
SELECT SP.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm",
	CT.CategoryID AS "Mã danh mục",
	CT.CategoryName AS "Tên danh mục",
	NCC.ContactName AS "Tên nhà cung cấp"
FROM Products SP
FULL JOIN Categories CT ON CT.CategoryID = SP.CategoryID
FULL JOIN Suppliers NCC ON NCC.SupplierID = SP.SupplierID
