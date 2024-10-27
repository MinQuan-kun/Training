-- (LEFT JOIN): Hãy liệt kê tên nhà cung cấp và tên sản phẩm của
-- các sản phẩm trong bảng "Products," bao gồm cả các sản phẩm không có nhà cung 
-- cấp
SELECT
	NCP.ContactName AS "Tên nhà cung cấp",
	SP.ProductName AS "Tên sản phẩm"
FROM Products SP
LEFT JOIN Suppliers NCP ON NCP.SupplierID = SP.SupplierID
