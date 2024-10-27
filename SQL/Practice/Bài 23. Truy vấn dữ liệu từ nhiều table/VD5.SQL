-- Từ bảng Products và Suppliers, hãy in ra các thông tin
-- sau đây:
-- -Mã nhà cung cấp
-- -Tên công ty
-- -Tổng số các sản phẩm khác nhau đã cung cấp
-- Và chỉ in ra màn hình duy nhất 1 nhà cung cấp có số
-- lượng sản phẩm khác nhau nhiều nhất.

--C1
SELECT TOP 1 
	NCP.SupplierID AS "Mã nhà cung cấp",
	NCP.CompanyName AS "Tên công ty",
	COUNT(SP.ProductID) AS "Tổng số sản phẩm khác nhau"
FROM Suppliers NCP, Products SP
WHERE NCP.SupplierID = SP.SupplierID
GROUP BY NCP.SupplierID , NCP.CompanyName
ORDER BY COUNT(SP.ProductID) DESC

--C2
SELECT TOP 1 
	NCP.SupplierID AS "Mã nhà cung cấp",
	NCP.CompanyName AS "Tên công ty",
	COUNT(SP.ProductID) AS "Tổng số sản phẩm khác nhau"
FROM Suppliers NCP
JOIN Products SP ON NCP.SupplierID = SP.SupplierID
GROUP BY NCP.SupplierID , NCP.CompanyName
ORDER BY COUNT(SP.ProductID) DESC
