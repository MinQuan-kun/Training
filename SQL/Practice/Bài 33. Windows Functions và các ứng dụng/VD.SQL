--Xếp hàng sản phẩm theo giá giảm dần trên toàn bộ table
SELECT 
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (ORDER BY UnitPrice DESC) AS Ranking
FROM Products 


--Xếp theo từng lĩnh vực, từng thể loại
SELECT 
	ProductID,
	ProductName,
	CategoryID,
	UnitPrice,
	RANK() OVER (PARTITION BY CategoryID ORDER BY UnitPrice DESC) AS Ranking
FROM Products 

--Xếp hạng sinh viên toàn trường dựa trên điểm số giảm dần
SELECT *,
RANK() OVER(ORDER BY diem_trung_binh DESC) as Ranking
FROM sinh_vien

--Xếp hạng sinh viên theo từng lớp học dựa trên điểm số giảm dần không nhảy xếp hạng
SELECT *,
RANK() OVER(PARTITION BY ma_lop_hoc ORDER BY diem_trung_binh DESC) AS RANKING
FROM sinh_vien

--Xếp hạng sinh viên theo từng lớp học dựa trên điểm số giảm dần không nhảy xếp hạng không nhảy hạng
SELECT *,
DENSE_RANK() OVER(PARTITION BY ma_lop_hoc ORDER BY diem_trung_binh DESC) AS RANKING
FROM sinh_vien

--Xếp hạng sinh viên theo từng lớp học dựa trên điểm số giảm dần không nhảy xếp hạng, không bị trùng hạng
SELECT *,
ROW_NUMBER() OVER(PARTITION BY ma_lop_hoc ORDER BY diem_trung_binh DESC) AS RANKING
FROM sinh_vien

--Sử dụng hàm LAG() lấy thông tin về đơn hàng
-- và ngày đặt hàng trước đó cho mỗi khách hàng
SELECT
	OD.CustomerID,
	OrderID,
	OrderDate,
	LAG(OrderDate) OVER (PARTITION BY CustomerID ORDER BY OrderDate ASC) AS "Ngày đặt hàng trước đây"
FROM Orders OD
ORDER BY OD.CustomerID,
	OD.OrderID