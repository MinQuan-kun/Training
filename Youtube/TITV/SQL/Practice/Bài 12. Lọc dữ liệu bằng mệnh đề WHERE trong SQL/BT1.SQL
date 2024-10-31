--Hãy liệt kê tất cả các đơn hàng được gửi đế quốc gia là France
SELECT *
FROM Orders od
WHERE od.ShipCountry = 'France'