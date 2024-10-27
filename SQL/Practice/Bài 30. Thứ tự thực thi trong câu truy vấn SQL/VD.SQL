
SELECT SP.ProductID, --2
	ProductName
FROM Products SP --1

SELECT SP.ProductName,
ProductID	--3
FROM Products SP --1
WHERE SP.CategoryID = 1 --2

SELECT SP.CategoryID, COUNT(SP.ProductID) AS "Toltal Products" --4
FROM Products SP --1
WHERE SP.CategoryID IN(1,2,3) --2
GROUP BY CategoryID --3

SELECT SP.CategoryID, COUNT(SP.ProductID) AS "Toltal Products" --5
FROM Products SP --1
WHERE SP.CategoryID IN(1,2,3) --2
GROUP BY CategoryID --3
HAVING COUNT(SP.ProductID) >= 10 --4
--Toltal Products chưa được khai báo ở đây nên sẽ không thực thi

SELECT SP.CategoryID, COUNT(SP.ProductID) AS "Toltal Products" --5
FROM Products SP --1
WHERE SP.CategoryID IN(1,2,3,4,5,6,7) --2
GROUP BY CategoryID --3
HAVING COUNT(SP.ProductID) >= 10 --4 Toltal Products chưa được khai báo ở đây nên sẽ không thực thi
ORDER BY [Toltal Products] ASC --6