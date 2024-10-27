--Xếp hàng sản phẩm theo giá giảm dần trên toàn bộ table
SELECT 
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (ORDER BY UnitPrice DESC) AS Ranking
FROM Products 


--Xếp theo từng lĩnh vực, từng thể loại
SELECT 
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Ranking
FROM Products 
