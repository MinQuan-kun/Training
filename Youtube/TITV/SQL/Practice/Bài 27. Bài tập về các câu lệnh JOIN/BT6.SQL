-- (FULL JOIN): Liệt kê tên nhân viên và tên
-- khách hàng của các đơn hàng trong bảng "Orders".
-- Bao gồm cả các đơn hàng không có nhân viên hoặc
-- khách hàng tương ứng. Sử dụng FULL JOIN hoặc
-- Kết hợp LEFT JOIN và RIGHT JOIN để kết hợp bảng
-- "Orders" với bảng "Employees" và "Customers" để
-- lấy thông tin về nhân viên và khách hàng.
SELECT
	OD.OrderID AS "Mã đơn hàng",
	OD.CustomerID AS "Mã khách hàng",
	KH.ContactName AS "Tên khách hàng",
	NV.FirstName AS "Họ nhân viên",
	NV.LastName AS "Tên tên nhân viên"
FROM Orders OD
FULL JOIN Employees NV ON NV.EmployeeID = OD.EmployeeID
FULL JOIN Customers KH ON KH.CustomerID = OD.CustomerID