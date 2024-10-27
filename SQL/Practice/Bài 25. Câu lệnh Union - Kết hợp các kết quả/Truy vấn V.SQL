-- Thực hiện lại truy vấn số 5, sử dụng câu lệnh UNION
-- Từ bảng Order Details hãy liệt kê các đơn đặt hàng có Unit
-- Price nằm trong phạm vi từ 100 đến 200 HOẶC đơn hàng phải
-- có Quantity bằng 10 hoặc 20 có sử dụng DISTINCT
SELECT DISTINCT OrderID
FROM [Order Details] ODD
WHERE ODD.UnitPrice BETWEEN 100 AND 200
UNION
SELECT DISTINCT OrderID
FROM [Order Details] ODD
WHERE ODD.Quantity IN (10, 20)