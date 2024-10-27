-- Hãy lấy ra tất cả các nhà cung cấp
-- hàng có tên công ty bắt đầu bằng chữ A
-- và không chứ ký tự b.
SELECT *
FROM Suppliers NCP
WHERE NCP.ContactName LIKE 'A[^b]%'