--Lọc ra những khách hàng có số đơn hàng > 10
SELECT KH.CustomerID,
	KH.ContactTitle,
	COUNT(OD.OrderID) AS " Số đơn hàng"
FROM Orders OD
JOIN Customers KH ON KH.CustomerID = OD.CustomerID
GROUP BY KH.CustomerID, KH.ContactTitle
HAVING COUNT(OD.OrderID) > 10


--Lọc ra những khách hàng có số đơn hàng > 10
SELECT *
FROM Customers KH
WHERE CustomerID IN
(
            SELECT CustomerID
            FROM Orders OD
            GROUP BY OD.CustomerID
            HAVING COUNT(OD.OrderID) > 10
)