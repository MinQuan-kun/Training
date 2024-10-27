-- Từ bảng Orders và Shipper, hãy in ra các thông tin
-- sau đây:
-- -Mã nha vận chuyển
-- -Tên công ty vận chuyển
-- -Tổng số tiền được vận chuyển(Sum Freight)
-- Và in ra màn hình theo thứ tự sắp xếp tổng tiền vận
-- chuyển giảm dần 

--C1
SELECT 
	SI.ShipperID AS "Mã nhà vận chuyển",
	SI.CompanyName AS "Tên công ty vận chuyển",
	SUM(OD.Freight) AS "Tổng tiền vận chuyển"
FROM Orders OD, Shippers SI
WHERE OD.ShipVia = SI.ShipperID
GROUP BY SI.ShipperID ,SI.CompanyName
ORDER BY SUM(OD.Freight) DESC

--C2
SELECT 
	SI.ShipperID AS "Mã nhà vận chuyển",
	SI.CompanyName AS "Tên công ty vận chuyển",
	SUM(OD.Freight) AS "Tổng tiền vận chuyển"
FROM Orders OD
JOIN Shippers SI ON OD.ShipVia = SI.ShipperID
GROUP BY SI.ShipperID ,SI.CompanyName
ORDER BY SUM(OD.Freight) DESC