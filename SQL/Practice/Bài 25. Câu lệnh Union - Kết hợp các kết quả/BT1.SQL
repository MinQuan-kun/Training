-- Hãy viết và thực thi lại câu lệnh truy vấn này, sau đó
-- giải thích ý nghĩa câu lệnh
SELECT 
    KH.City,
    KH.Country
FROM Customers KH
WHERE KH.Country LIKE 'U%' --Chọn các quốc gia bắt đầu bằng chữ U
UNION
SELECT 
    Sup.City,
    Sup.Country
FROM Suppliers Sup
WHERE  Sup.City = 'London' --Chọn cách thành phố là London
UNION
SELECT 
    OD.ShipCity,
    OD.ShipCountry
FROM Orders OD
WHERE OD.ShipCountry = 'USA' --Chọn các quốc gia ship đi là USA

-- Kết quả
-- Xuất ra bảng danh sách mà các nhà cung cấp đến từ thành phố là London, 
-- mà sản phẩm được ship đi là đến USA cho các khách hàng đến từ các nước bắt đầu bằng 'U'
