--Tạo 1 bảng ảo
SELECT *
INTO SUS
FROM Customers

--Xóa đi khách hàng 'ALFKI'
DELETE FROM SUS 
WHERE SUS.CustomerID LIKE 'ALFKI'

--Xóa toàn bộ khách hàng có quốc gia bắt đầu bằng 'U'
DELETE FROM SUS
WHERE SUS.Country LIKE 'U%'

--Xóa sạch 1 bảng
DELETE FROM SUS

