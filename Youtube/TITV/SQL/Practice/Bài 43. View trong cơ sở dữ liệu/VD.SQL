--Tổng số lượng đơn hàng theo từng tháng
CREATE VIEW MonthlySales AS 
SELECT YEAR(OrderDate) AS "Năm",
	MONTH(OrderDate) AS "Tháng",
	COUNT(OrderID) AS "Số lượng đơn hàng"
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)

--Tạo View kết hợp thông tin về khách hàng và đơn hàng
CREATE VIEW INFOMATIONKH AS
SELECT	KH.CustomerID,
	Kh.ContactName,
	KH.CompanyName,
	O.OrderID,
	O.ShipCountry,
	O.OrderDate
FROM Customers KH
JOIN Orders O ON O.CustomerID = KH.CustomerID
SELECT * 
FROM INFOMATIONKH

--Tạo view hiển thị tổng giá trị của từng đơn hàng
CREATE VIEW OrderTotal AS
SELECT 
	O.OrderID,
	O.CustomerID,
	O.OrderDate,
	SUM(OD.Quantity * (OD.UnitPrice* (1- OD.Discount))) AS "Tổng tiền"
FROM Orders O 
JOIN [Order Details] OD ON O.OrderID = OD.OrderID
GROUP BY O.OrderID,
	O.CustomerID,
	O.OrderDate

SELECT *
FROM OrderTotal

--Sử dụng CHECK OPTION để chỉ cho phép chèn dữ liệu thỏa mãn điều kiện. Giả sử 
-- bạn có một View tên "HighValueProducts" để hiện thị sản phẩm có giá trị cao hơn $500
CREATE VIEW "HighValueProducts" AS
SELECT SP.ProductID,
ProductName,
UnitPrice
FROM Products SP
WHERE UnitPrice > 500
WITH CHECK OPTION


