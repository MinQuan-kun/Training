-- Lấy danh sách các khách hàng
-- không có tên công ty (CompanyName)
SELECT *
FROM Customers KH
WHERE KH.CompanyName IS NULL