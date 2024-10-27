-- Hãy lấy ra tất cả các khách hàng
-- từ các thành phố sau đây
-- Berlin
-- London
-- Warszawa
SELECT*
FROM Customers KH
WHERE KH.City IN ('Berlin' ,'London', 'Warszawa')