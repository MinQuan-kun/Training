-- Lấy thông tin về các đơn hàng, và tên các sản phẩm
-- thuộc các đơn hàng chưa được giao cho khách 

SELECT DISTINCT ProductName,
	Od.*
FROM Products SP
JOIN [Order Details] OD ON OD.ProductID = SP.ProductID 
JOIN Orders Odd ON Od.OrderID = OD.OrderID
WHERE OD.OrderID IN(
SELECT OrderID
FROM Orders
WHERE ShippedDate IS NULL
)



--C2
SELECT o.OrderID, p.ProductName
FROM Orders o
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
INNER JOIN Products p
ON od.ProductID = p.ProductID
WHERE o.OrderID IN(
	SELECT OrderID
	FROM Orders
	WHERE ShippedDate IS NULL
)


