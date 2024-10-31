-- Hãy lấy ra tất cả các nhà cung cấp hàng có chữ 'b' trong tên của công ty
SELECT*
FROM Suppliers NCP
WHERE NCP.CompanyName LIKE '%b%'