--Lấy danh sách các đơn đặt được gửi đến các thành phố có chứa chữ 'a'
SELECT *
FROM Orders OD
WHERE OD.ShipCity LIKE '%a%'