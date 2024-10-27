-- Từ bảng Employees và Orders, hãy in ra
-- các thông tin sau đây:
-- -Mã nhân viên
-- -Tên nhân viên
-- -Số lượng đơn hàng mà nhân viên bán được

--C1
SELECT OD.EmployeeID AS "Mã nhân viên",
	NV.LastName AS "Họ",
	NV.FirstName AS "Tên",
	COUNT(OD.OrderID) AS "Số lượng đơn hàng bán được"
FROM Employees NV, Orders OD
WHERE NV.EmployeeID = OD.EmployeeID
GROUP BY OD.EmployeeID, NV.LastName, NV.FirstName

--C2
SELECT OD.EmployeeID,
	NV.LastName,
	NV.FirstName,
	COUNT(OD.OrderID) AS "Số lượng đơn bán được"
FROM Orders OD
	JOIN Employees NV ON  NV.EmployeeID = OD.EmployeeID
GROUP BY OD.EmployeeID, NV.LastName, NV.FirstName