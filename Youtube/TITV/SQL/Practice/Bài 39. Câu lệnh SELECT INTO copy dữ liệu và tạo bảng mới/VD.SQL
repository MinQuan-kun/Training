-- Tạo ra bảng mới với các sản phẩm có giá > 50
SELECT *
INTO HighValueProducts
FROM Products
WHERE [UnitPrice] > 50;


-- Tạo ra bảng mới với các đơn hàng được giao đến USA
SELECT *
INTO USA
FROM Orders
WHERE [ShipCountry] = 'USA'
