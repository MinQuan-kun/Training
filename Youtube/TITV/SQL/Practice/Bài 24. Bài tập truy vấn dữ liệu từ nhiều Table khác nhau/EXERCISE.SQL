--Give these shipcountries for which customers
-- don't come from the United States
--Select only this countries which is over than 100 orders
--Display Shipcountry and Number of orders

--C1
SELECT
	OD.ShipCountry AS "Country",
	COUNT(OD.OrderID) AS "Number of orders"
FROM Orders OD, Customers KH
WHERE KH.CustomerID = OD.CustomerID 
	AND OD.ShipCountry != 'USA'
GROUP BY OD.ShipCountry
HAVING COUNT(OD.OrderID) > 100

--C2
SELECT
	OD.ShipCountry AS "Country",
	COUNT(OD.OrderID) AS "Number of orders"
FROM Orders OD
JOIN Customers KH ON KH.CustomerID = OD.CustomerID 
WHERE OD.ShipCountry != 'USA'
GROUP BY OD.ShipCountry
HAVING COUNT(OD.OrderID) > 100