

SELECT TOP 3 --9
p.ProductID, o.Discount, o2.ShipCountry --7
FROM Products p  --1
INNER JOIN [Order Details] o --2
ON p.ProductID = o.ProductID  --3
INNER JOIN Orders o2 --4
ON o.OrderID = o2.OrderID --5
WHERE o.Discount = 0.25 AND o2.ShipCountry = 'Germany' --6
ORDER BY p.ProductID DESC --8
