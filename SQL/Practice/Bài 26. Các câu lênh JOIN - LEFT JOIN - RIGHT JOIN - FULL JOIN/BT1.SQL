-- (INNER JOIN): Hãy liệt kê tên nhân viên và tên khách hàng của các
-- đơn hàng trong bảng "Orders"
SELECT 
	NV.FirstName AS "Họ",
	NV.LastName AS "Tên",
	KH.ContactName AS "Tên khách hàng",
	OD.OrderID AS "Mã đơn hàng"
FROM Orders OD
INNER JOIN Customers KH ON KH.CustomerID = OD.CustomerID
INNER JOIN Employees NV ON NV.EmployeeID = OD.EmployeeID
GROUP BY NV.FirstName,NV.LastName,KH.ContactName, OD.OrderID
