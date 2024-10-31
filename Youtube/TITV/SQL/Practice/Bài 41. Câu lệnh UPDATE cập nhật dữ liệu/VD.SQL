-- Cập nhật thông tin của một khách hàng trong bảng Customer.
-- Cập nhật địa chỉ của khách hàng có CustomerID là "ALKI"
UPDATE Customers
SET [Address] = 'New Address'
WHERE [CustomerID] = 'ALFKI'

--Tăng toàn bộ giá sản phẩm trong bảng Products lên 10 %
UPDATE Products
SET UnitPrice = UnitPrice * (1 + 0.1)

--Cập nhật thông tin của sản phẩm có ProductID
--là 7 trong bảng Products để thay đổi tên sản phẩm
-- thành "Máy tính xách tay mới"
-- và cập nhật giá bán thành 999.99 đôla

UPDATE Products
SET ProductName = N'Máy tính xách tay mới',
	UnitPrice = 999.99
WHERE ProductID = 7

SELECT *
FROM Products