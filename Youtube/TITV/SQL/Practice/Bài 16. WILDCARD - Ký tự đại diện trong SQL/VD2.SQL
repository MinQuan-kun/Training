-- Hãy lọc ra tất cả các khách hàng có tên
-- liên hệ bắt đầu bằng chữ 'H' và có chữ 
-- thứ 2 là bất ky ký tự nào
SELECT *
FROM Customers KH
WHERE KH.ContactName LIKE 'H_%'