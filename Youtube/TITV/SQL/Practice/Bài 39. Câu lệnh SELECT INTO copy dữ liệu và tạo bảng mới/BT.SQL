-- 1. Tạo một bảng tạm thời "CustomersLondon" từ bảng "Customers" trong cơ sở dữ
-- liệu NorthWind để chứa thông tin của các khách hàng có địa chỉ ở London

-- 2. Tạo một bảng tạm thời "HighValueOrders" để chứa thông tin về các đơn hàng có tổng
-- giá trị đặt hàng lớn hơn 1000 đô la

--1
SELECT *
INTO CustomersLondon
FROM Customers
WHERE DIACHI = 'London'

--2
WITH TONGDON AS(
	SELECT
	od.OrderID,
	od.ProductID,
	od.Quantity,
	od.UnitPrice,
	od.Discount,
	SUM(od.Quantity * (od.UnitPrice *(1 - od.Discount) )) AS "Tongdon",
	O.EmployeeID,
	O.CustomerID,
	O.OrderDate,
	O.ShippedDate,
	O.ShipCountry
	FROM [Order Details] od
	JOIN Orders O ON O.OrderID = od.OrderID
	GROUP BY od.OrderID, od.ProductID, od.Quantity, od.UnitPrice, od.Discount, O.EmployeeID, O.CustomerID, O.OrderDate,O.ShippedDate,
	O.ShipCountry
)
--2
SELECT *
INTO HighValueOrders
FROM TONGDON T
WHERE T.Tongdon > 1000
