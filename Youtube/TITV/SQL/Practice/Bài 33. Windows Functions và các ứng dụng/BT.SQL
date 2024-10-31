-- Tính tổng doanh số bán hàng năm cho mỗi khách hàng và xếp hạng khách hàng dựa
-- trên doanh số bán hàng
WITH NAM AS(
	SELECT YEAR(OrderDate) AS "Năm",
	OrderID,
	CustomerID
	FROM Orders 
	GROUP BY YEAR(OrderDate), OrderID,
	CustomerID
),
DOANHSO AS (
	SELECT SUM(od.Quantity * od.UnitPrice) AS "Tổng tiền",
	N.Năm,
	K.CustomerID,
	K.ContactName
	FROM [Order Details] Od
	JOIN NAM N ON N.OrderID = Od.OrderID
	JOIN Customers K ON K.CustomerID = N.CustomerID
	GROUP BY N.Năm,K.CustomerID, K.ContactName
)
SELECT D.NĂM,
	D.CustomerID,
	D.ContactName,
	D.[Tổng tiền],
    RANK() OVER (PARTITION BY D.Năm ORDER BY D."Tổng tiền" DESC) AS "Xếp hạng"
FROM DOANHSO D



