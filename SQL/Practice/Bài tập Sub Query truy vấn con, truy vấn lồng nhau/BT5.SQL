-- Lấy thông tin về các khách hàng có tổng giá trị đơn hàng lớn nhất

WITH DONCAONHAT AS(
SELECT SUM(ODD.UnitPrice * ODD.Quantity) AS "tổng giá trị đơn hàng",
ODD.OrderID,
OD.CustomerID
FROM [Order Details] ODD
JOIN Orders OD ON OD.OrderID = ODD.OrderID
GROUP BY ODD.OrderID, OD.CustomerID
ORDER BY [tổng giá trị đơn hàng]DESC
)

SELECT *
FROM Customers KH
WHERE KH.CustomerID = (SELECT CustomerID FROM  DONCAONHAT)
