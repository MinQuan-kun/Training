-- Từ bảng Products và Suppliers, hãy tìm các sản
-- phẩm thuộc được cung cấp từ nước 'Germany' (Đức)
-- các thông tin sau đây:
-- - Mã nhà cung cấp
-- -Quốc gia
-- -Mã sản phẩm
-- -Tên sản phẩm

--C1
SELECT NCP.SupplierID AS "Mã nhà cung cấp",
	Country AS " Quốc gia",
	SP.ProductID AS " Mã sản phẩm",
	ProductName AS "Tên sản phẩm"
FROM Products SP, Suppliers NCP
WHERE SP.SupplierID = NCP.SupplierID
AND NCP.Country = 'Germany'

--C2
SELECT NCP.SupplierID AS "Mã nhà cung cấp",
	Country AS " Quốc gia",
	SP.ProductID AS " Mã sản phẩm",
	ProductName AS "Tên sản phẩm"
FROM Products SP
JOIN Suppliers NCP ON SP.SupplierID = NCP.SupplierID
WHERE NCP.Country = 'Germany'
