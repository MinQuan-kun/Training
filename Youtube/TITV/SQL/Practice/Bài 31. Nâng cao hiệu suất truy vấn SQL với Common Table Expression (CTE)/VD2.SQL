-- Lấy thông tin về đơn hàng (Orders) cùng
-- với tổng giá trị đơn hàng và tỷ lệ giữa
-- tổng giá trị và phí giao hàng


--Sub Query
SELECT
	OD.OrderID,
	OD.Freight,
	OD.Freight,
	(
        SELECT 
            SUM(Quantity * UnitPrice)
	    FROM [Order Details] ODD
	    WHERE ODD.OrderID = OD.OrderID
	) AS "Tổng tiền",
	(
        SELECT 
            (SUM(Quantity * UnitPrice) / OD.Freight)
	    FROM [Order Details] ODD
	    WHERE ODD.OrderID = OD.OrderID
	) AS "Tỷ lệ"
FROM Orders OD

--CTE
WITH Total AS (
    SELECT 
	    OrderID,
	    SUM(Quantity * UnitPrice) AS "Tổng tiền"
	FROM [Order Details]
    GROUP BY OrderID
)

SELECT 
    OD.*,
    T.[Tổng tiền],
    (T.[Tổng tiền] / OD.Freight) AS "Tỷ lệ"
FROM Orders OD
JOIN Total T ON T.OrderID = OD.OrderID