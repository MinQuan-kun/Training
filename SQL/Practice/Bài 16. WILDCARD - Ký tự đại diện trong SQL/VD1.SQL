-- Hãy lọc ra tất cả các khách hàng có tên liên hệ
-- bắt đầu bằng chữ 'A'
SELECT *
FROM Customers KH
WHERE KH.ContactName LIKE 'A%'