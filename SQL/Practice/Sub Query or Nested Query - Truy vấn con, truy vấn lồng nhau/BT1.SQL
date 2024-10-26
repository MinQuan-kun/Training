-- Hãy in ra Mã đơn hàng
-- tổng giá trị của đơn hàng 
--Và số lượng sản phẩm

SELECT *
FROM
(SELECT OD.OrderID AS "Mã đơn hàng",
	SUM(OD.Quantity * OD.Quantity) AS "Tổng giá trị đơn hàng",
	COUNT(OD.Quantity) AS "Số lượng"
FROM [Order Details] OD
GROUP BY OD.OrderID
) AS "TEMP"
