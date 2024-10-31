-- Từ bảng Customers và Orders, hãy in ra các thông tin
-- sau đây:
-- -Mã số khách hàng
-- -Tên công ty
-- -Tên liên hệ
-- -Số lượng đơn hàng đã mua
-- Với điều kiện quốc gia của khách hàng là UK

--C1
SELECT 
	KH.CustomerID AS "Mã số khách hàng",
	KH.CompanyName AS "Tên công ty",
	KH.ContactName AS "Tên liên hệ",
	COUNT(OD.OrderID) AS "Số đơn hàng"
FROM Customers KH, Orders OD
WHERE KH.CustomerID = OD.CustomerID
AND KH.Country = 'UK'
GROUP BY KH.CustomerID,KH.CompanyName,KH.ContactName

--C2
SELECT
	KH.CustomerID AS "Mã số khách hàng",
	KH.CompanyName AS "Tên công ty",
	KH.ContactName AS "Tên liên hệ",
	COUNT(OD.OrderID) AS "Số đơn hàng"
FROM Customers KH
JOIN Orders OD ON OD.CustomerID = KH.CustomerID
WHERE KH.Country = 'UK'
GROUP BY KH.CustomerID,KH.CompanyName,KH.ContactName
