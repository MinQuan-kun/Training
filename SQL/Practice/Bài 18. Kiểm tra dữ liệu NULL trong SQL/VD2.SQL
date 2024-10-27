-- Lấy danh sách các khách hàng có khu vực
-- (Region) không bị NULL
SELECT *
FROM Customers KH
WHERE KH.Region IS NOT NULL