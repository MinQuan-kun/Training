-- (LEFT JOIN): Liệt kê tên khách hàng và tên
-- nhân viên phụ trách của các đơn hàng trong bảng
-- "Orders".Bao gồm cả các đơn hàng không có nhân
-- viên phụ trách.Sử dụng LEFT JOIN để kết hợp bảng
-- "Orders" với bảng "Employees" để lấy thông tin về
-- khách hàng và nhân viên phụ trách 
SELECT 
OD.OrderID AS "Mã đơn hàng",
KH.ContactName AS "Tên khách hàng",
NV.FirstName AS "Họ nhân viên",
NV.LastName AS "Tên tên nhân viên"
FROM Orders OD
LEFT JOIN Employees NV ON NV.EmployeeID = OD.EmployeeID
LEFT JOIN Customers KH ON KH.CustomerID = OD.CustomerID
GROUP BY OD.OrderID ,KH.ContactName,NV.FirstName, NV.LastName

