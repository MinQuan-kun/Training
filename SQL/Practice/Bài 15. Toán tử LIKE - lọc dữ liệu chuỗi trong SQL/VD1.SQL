-- Hãy lọc ra tất cả các khách hàng đến từ
-- quốc gia(Country) bắt đầu bằng chữ 'A'
SELECT *
FROM Customers KH
WHERE KH.Country LIKE 'A%'

