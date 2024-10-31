--Tính tổng số tiền của từng đơn hàng 

SELECT *,(
	SELECT 
	SUM(ODD.Quantity * ODD.UnitPrice)
	FROM [Order Details] ODD
	WHERE ODD.OrderID = OD.OrderID
) AS "Total"
FROM Orders OD

--Lọc ra tên sản phẩm và tổng số đơn hàng của sản phẩm
SELECT [Tên sản phẩm], [Tổng sản phẩm]
FROM
(
    SELECT SP.ProductName AS "Tên sản phẩm",(
    SELECT COUNT(ODD.OrderID) 
        FROM [Order Details] ODD
        WHERE SP.ProductID = ODD.ProductID
    ) AS "Tổng sản phẩm"
    FROM Products SP
) AS temp

