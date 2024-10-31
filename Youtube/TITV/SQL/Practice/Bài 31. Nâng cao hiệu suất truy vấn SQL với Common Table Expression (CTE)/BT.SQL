-- 1.Sử dụng CTE để tính tổng doanh số bán hàng cho từng sản phẩm từ hai bảng
-- "Order Details" và "Products" trong cơ sở dữ liệu

-- 2.Sử dụng CTE để tính toán tổng doanh số bán hàng theo từng khách hàng và sau đó
-- sắp xếp danh sách khách hàng theo tổng doanh số giảm dần

-- 3.Sử dụng CTE tính tổng doanh số bán hàng theo năm từ bảng "Orders" và "Order Details"


--1
WITH DOANHSO AS (
	SELECT SUM(Quantity * (UnitPrice*(1 - Discount))) AS "Tổng tiền",
	ProductID
	FROM [Order Details] 
	GROUP BY ProductID
)

SELECT SP.*,
	D.[Tổng tiền] AS "Doanh số"
FROM Products SP
JOIN DOANHSO D ON D.ProductID = SP.ProductID


--2
WITH DOANHSOKH AS (
	SELECT SUM(Quantity * (UnitPrice *(1- od.Discount))) AS "Tổng tiền",
	Orders.CustomerID
	FROM [Order Details] od
	JOIN Orders ON Orders.OrderID = od. OrderID
	GROUP BY Orders.CustomerID
)

SELECT KH.CustomerID,
	KH.ContactName,
	E.[Tổng tiền] AS "Doanh số từng khách hàng"
FROM Customers KH
JOIN  DOANHSOKH E ON E.CustomerID = KH.CustomerID
GROUP BY KH.CustomerID, KH.ContactName, E.[Tổng tiền]
ORDER BY E.[Tổng tiền] DESC


--3
WITH EACHYEAR AS
(
	SELECT DISTINCT YEAR(OrderDate) AS "NĂM",
	OrderID
	FROM Orders
	GROUP BY YEAR(OrderDate), OrderID
),
DOANHTHU AS 
(
	SELECT SUM(od.Quantity * (od.UnitPrice *(1- od.Discount))) AS "Tổng tiền",
	N.NĂM
	FROM [Order Details] od
	JOIN EACHYEAR N ON od.OrderID = N.OrderID
	GROUP BY N.NĂM
)
SELECT D.NĂM,
	D.[Tổng tiền]
FROM DOANHTHU D