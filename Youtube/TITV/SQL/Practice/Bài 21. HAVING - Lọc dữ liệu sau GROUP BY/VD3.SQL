-- Hãy cho biết tổng số tiền vận chuyển của từng tháng
-- trong nửa năm sau cảu năm 1996, sắp xếp theo tháng tăng dần
-- Tổng tiền vận chuyển lớn hơn 1000$
SELECT 
	MONTH(OD.ShippedDate) AS "Tháng",
	SUM(OD.Freight) AS "Tổng tiền vận chuyển"
FROM Orders OD
WHERE OD.ShippedDate BETWEEN '1996-07-01' AND '1996-12-31'
GROUP BY MONTH(OD.ShippedDate)
HAVING SUM(OD.Freight) > 1000
ORDER BY MONTH(OD.ShippedDate) ASC