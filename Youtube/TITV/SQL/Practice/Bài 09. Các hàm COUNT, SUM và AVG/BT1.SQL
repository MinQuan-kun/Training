-- Hãy đếm số lượng đơn hàng từ bảng(Orders)
-- với 2 cách:
-- Cách 1 dùng dấu *
-- Cách 2 dùng mã đơn hàng 

--Cách 1
SELECT COUNT(*)
FROM Orders o

--Cách 2
SELECT COUNT(o.OrderID)
FROM Orders o