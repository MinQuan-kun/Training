-- Đưa ra các đơn đặt hàng có Quantity bằng 10 hoặc 20
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.Quantity IN (10, 20)