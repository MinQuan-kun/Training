-- --Tính số lượng sản phẩm còn lại trong kho(UnitslnStock)
-- sau khi bán hết các sản phẩm đã được đặt hàng(UnitsOnOrder)
SELECT 
	ProductID AS "Mã sản phẩm",
	ProductName AS "Tên sản phẩm",
	UnitsInStock AS "Số lượng trong kho",
	UnitsOnOrder AS "Số lượng khách đặt",
	UnitsInStock - UnitsOnOrder AS "Sản phẩm còn lại"
FROM Products