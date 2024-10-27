-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- ShipCountry LIKE 'U_'
-- ShipCountry LIKE 'U%'
SELECT*
FROM Orders OD
WHERE OD.ShipCountry LIKE 'U_'

SELECT*
FROM Orders OD
WHERE OD.ShipCountry LIKE 'U%'
