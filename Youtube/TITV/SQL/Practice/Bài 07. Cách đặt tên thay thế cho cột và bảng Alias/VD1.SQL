-- Viết câu lệnh SQL lấy "CompanyName"
-- và đặt tên thay thế là "Công ty";
-- "PostalCode" và đặt tên thay thế là "Mã bưu điện"
SELECT SP.CompanyName AS "Công Ty",
		SP.PostalCode AS "Mã bưu điện"
FROM Suppliers Sp