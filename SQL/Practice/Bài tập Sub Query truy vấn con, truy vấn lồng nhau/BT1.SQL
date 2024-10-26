--Liệt kê các đơn hàng có ngày
-- đặt hàng gần nhất
SELECT *
FROM Orders ODD
WHERE ODD.OrderDate =(
SELECT MAX(OD.OrderDate) AS "Ngày đặt gần nhất"
FROM Orders OD
)