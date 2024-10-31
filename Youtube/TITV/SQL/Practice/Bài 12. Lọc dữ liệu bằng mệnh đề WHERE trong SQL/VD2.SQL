-- Bạn hãy liệt kê tất các đơn hàng bị giao muộn,
-- biết rằng ngày cần phải giao hàng ngày
-- là RequiredDate, ngày giao thực té là ShippedDate
SELECT *
FROM Orders od
WHERE od.RequiredDate < od.ShippedDate