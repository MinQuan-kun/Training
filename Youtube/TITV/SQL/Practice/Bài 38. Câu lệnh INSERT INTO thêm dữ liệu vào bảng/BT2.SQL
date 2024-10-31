-- Hãy viết một lệnh INSERT INTO để thêm đơn hàng sau:
-- CustomerID: Chọn một mã khách hàng hiện có trong bảng CustomerID
-- EmployeeID: Chọn một mã nhân viên hiện có trong bảng Emoloyees.
-- OrderDate: Sử dụng ngày hiện tại.
-- ShipVia: Chọn một mã Shipper hiện có trong bảng Shippers

INSERT INTO Orders (CustomerID, EmployeeID, OrderDate, ShipVia)
VALUES ('PHUTY', 9, GETDATE() , 3)