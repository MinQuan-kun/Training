-- Hãy liệt kê toàn bộ các thành phố và quốc gia tồn tại trong 2 Tables sau đây với 2 tình 
-- huống sử dụng UNION, và UNION ALL

--16 Quốc gia
SELECT DISTINCT Sup.Country
FROM Suppliers Sup
UNION
--21 Quốc gia
SELECT DISTINCT KH.Country
FROM Customers KH
--25 Quốc gia


--16 Quốc gia
SELECT DISTINCT Sup.Country
FROM Suppliers Sup
UNION ALL
--21 Quốc gia
SELECT DISTINCT KH.Country
FROM Customers KH
--37 Quốc gia