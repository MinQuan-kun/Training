-- Hãy lọc ra tất cả các đơn hàng
-- được gửi đến thành phố có chữ cái
-- bắt đầu là L, chữ cái thứ hai là các
-- ký tự từ a đến e
SELECT *
FROM Orders OD
WHERE OD.ShipCity LIKE 'L[a-e]%'