-- (RIGHT JOIN): Liệt kê tên khách hàng và
-- tên nhân viên phụ trách của các đơn hàng trong
-- bảng "Orders". Bao gồm cả các khách hàng không
-- có đơn hàng. Sử dụng RIGHT JOIN để kết hợp bảng
-- "Orders" với bảng "Customers" để lấy thông tin về
-- khách hàng và nhân viên phụ trách.
SELECT 
	OD.OrderID AS "Mã đơn hàng",
	KH.ContactName AS " Tên khách hàng",
	NV.FirstName AS "Họ nhân viên phụ trách",
	NV.LastName AS "Tên nhân viên phụ trách"
FROM Orders OD
RIGHT JOIN Employees NV ON NV.EmployeeID = OD.EmployeeID
RIGHT JOIN Customers KH ON KH.CustomerID = OD.CustomerID

