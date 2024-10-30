--Thực hành 1
SELECT COUNT(*)
FROM [Sales].[SalesOrderDetail]

-- Bật hiển thị thống kê về tài nguyên I/O 
SET STATISTICS IO ON

--Truy vấn
SELECT *
FROM [Sales].[SalesOrderDetail]
WHERE CarrierTrackingNumber = '1B2B-492F-A9';
--logical reads 1238

-- Bật hiển thị thống kê về tài nguyên I/O 
SET STATISTICS IO OFF

--Tạo idex cho CarrierTrackingNumber
CREATE INDEX idx_CarrierTrackingNumber
ON [Sales].[SalesOrderDetail] (CarrierTrackingNumber);

SET STATISTICS IO ON
SELECT *
FROM [Sales].[SalesOrderDetail]
WHERE CarrierTrackingNumber = '1B2B-492F-A9';
--logical reads 70
SET STATISTICS IO OFF

--Tốc độ đã nhanh hơn

--Thực hành 2
-- Tạo index trên bảng Person.Address, cột AddressLine1 và đánh giá hiệu suất truy vấn.
CREATE INDEX idx_Addressline_1
ON [Person].[Address] (AddressLine1);

SET STATISTICS IO ON

SELECT *
FROM [Person].[Address]
WHERE AddressLine1 = '9178 Jumping St.'

SET STATISTICS IO OFF
--Trong database đã có sẵn index nên hãy xóa và tự kiểm thử 


-- Tạo index cho cột "ProductName" trong bảng "Production.Product" và đánh giá hiệu suất
-- truy vấn
CREATE INDEX idex_Product_Name
ON [Production].[Product] (Name);


SET STATISTICS IO ON

SELECT *
FROM [Production].[Product]

SET STATISTICS IO OFF
--Trong database đã có sẵn index nên hãy xóa và tự kiểm thử 