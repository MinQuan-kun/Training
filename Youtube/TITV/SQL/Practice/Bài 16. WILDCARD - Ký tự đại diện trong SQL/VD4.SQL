-- Hãy lọc ra tất cả các đơn hàng
-- được gửi đến thành phố có chữ cái
-- bắt đầu là L, chữ cái thứ hai không
-- phải u hoặc o
SELECT *
FROM Orders OD
WHERE OD.ShipCity LIKE 'L[^u,o]%'