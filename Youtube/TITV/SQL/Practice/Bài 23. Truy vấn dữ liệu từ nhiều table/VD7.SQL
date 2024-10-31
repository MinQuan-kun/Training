-- Từ 3 bảng Orders Details, Orders,Employees hình hãy in ra các thông
-- tin sau đây:
-- -Mã đơn hàng
-- -Tên nhân viên
-- -Tổng số tiền sản phẩm của đơn hàng

--C1
SELECT OD.OrderID AS "Mã đơn hàng",
	NV.FirstName AS "Họ",
	NV.LastName AS "Tên",
	SUM(ODD.Quantity * ODD.UnitPrice) AS "Tổng số tiền sản phẩm"
FROM [Order Details] ODD , Orders OD, Employees NV
WHERE ODD.OrderID = OD.OrderID
	AND OD.EmployeeID = NV.EmployeeID
GROUP BY OD.OrderID, NV.FirstName, NV.LastName

--C2
SELECT OD.OrderID AS "Mã đơn hàng",
	NV.FirstName AS "Họ",
	NV.LastName AS "Tên",
	SUM(ODD.Quantity * ODD.UnitPrice) AS "Tổng số tiền sản phẩm"
FROM Orders OD
JOIN [Order Details] ODD ON ODD.OrderID = OD.OrderID
JOIN Employees NV ON OD.EmployeeID = NV.EmployeeID
GROUP BY OD.OrderID, NV.FirstName, NV.LastName