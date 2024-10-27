-- Thực hiện lại truy vấn số 4, sử dụng câu lệnh UNION ALL
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.UnitPrice BETWEEN 100 AND 200
UNION ALL
SELECT OrderID
FROM [Order Details] ODD
WHERE ODD.Quantity IN (10, 20)