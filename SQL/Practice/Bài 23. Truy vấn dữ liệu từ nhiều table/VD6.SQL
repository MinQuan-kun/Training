-- Từ bảng Orders và Order Details,
-- hãy in ra các thông tin sau đây:
-- -Mã đơn hàng
-- -Tổng số tiền sản phẩm của đơn hàng đó

--C1
SELECT
	OD.OrderID,
	SUM(ODD.UnitPrice * ODD.Quantity) AS "Tổng số tiền sản phẩm của đơn hàng đó"
FROM Orders OD, [Order Details] ODD
WHERE OD.OrderID = ODD.OrderID
GROUP BY OD.OrderID

--C2
SELECT
	OD.OrderID,
	SUM(ODD.UnitPrice * ODD.Quantity) AS "Tổng số tiền sản phẩm của đơn hàng đó"
FROM Orders OD
JOIN [Order Details] ODD ON OD.OrderID = ODD.OrderID
GROUP BY OD.OrderID