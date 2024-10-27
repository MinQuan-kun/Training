-- Thực hiện lại truy vấn số 5, sử dụng câu lệnh UNION
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.UnitPrice BETWEEN 100 AND 200
UNION
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.Quantity IN (10, 20)