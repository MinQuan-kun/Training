-- Hãy cho biết những thành phố
-- nào có số lượng đơn hàng được 
-- giao là khác 1 và 2, ngày đặt
-- hàng từ ngày '1997-04-01' đến 
-- ngày '1997-08-31'
SELECT 
	OD.ShipCity AS "Thành phố",
	COUNT(OD.OrderID) AS "Số lượng đơn hàng"
FROM Orders OD
WHERE OD.OrderDate BETWEEN '1997-04-01' AND '1997-08-31'
GROUP BY OD.ShipCity
HAVING COUNT(OD.OrderID) NOT IN(1,2)
	
