-- Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit
-- Price nằm trong phạm vi từ 100 đến 200
SELECT OrderID
FROM [Order Details] OD
WHERE OD.UnitPrice BETWEEN 100 AND 200