-- Cập nhật thông tin của tất cả khách hàng trong bảng Customers có 
-- thành phố(City) là "Paris" để thay đổi quốc gia (Country) của họ thành
-- "PHÁP"

-- Cập nhật thông tin của một sản phẩm cụ thể trong bảng Products dựa trên ProductName

--1

UPDATE Customers
SET Country = N'Pháp'
WHERE City = 'Paris'

--2
UPDATE Products
SET QuantityPerUnit = 99, UnitPrice = 1000, ProductName = 'Tên sản phẩm'
WHERE ProductName = 'Tên sản phẩm'