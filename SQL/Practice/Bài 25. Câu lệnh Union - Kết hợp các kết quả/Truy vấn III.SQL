-- Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit
-- Price nằm trong phạm vi từ 100 đến 200 Và đơn hàng phải
-- có Quantity bằng 10 hoặc 20
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.UnitPrice BETWEEN 100 AND 200
AND ODD.Quantity IN (10, 20)