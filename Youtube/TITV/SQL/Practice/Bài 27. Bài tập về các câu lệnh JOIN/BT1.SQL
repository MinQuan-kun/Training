-- (INNER JOIN): Liệt kê tên sản phẩm và tên 
-- nhà cung cấp cuả các sản phẩm đã được đặt
-- hàng trong bảng "Order Details".Sử dụng INNER JOIN để kết hợp bảng "Order Details" với các bảng
-- liên quan để lấy thông tin sản phẩm và nhà cung cấp
SELECT DISTINCT
	ODD.ProductID AS "Mã sản phẩm",
	SP.ProductName AS "Tên sản phẩm",
	NCC.ContactName AS "Tên nhà cung cấp"
FROM [Order Details] ODD
INNER JOIN  Products SP ON ODD.ProductID = SP.ProductID
INNER JOIN Suppliers NCC ON NCC.SupplierID = SP.SupplierID

