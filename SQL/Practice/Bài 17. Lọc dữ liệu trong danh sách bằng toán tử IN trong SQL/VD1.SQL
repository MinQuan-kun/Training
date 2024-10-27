-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- a, đơn hàng được giao đến Germany, UK, Brazil
-- b, đơn hàng được giao đến các quốc gia khác Germany, UK, Brazil

--a
SELECT *
FROM Orders OD
WHERE
	OD.ShipCountry IN ('Germany', 'UK', 'Brazil')

--b
SELECT *
FROM Orders OD
WHERE
	OD.ShipCountry NOT IN ('Germany', 'UK', 'Brazil')

