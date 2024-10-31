#Nhập điểm toán, văn, anh.
#Nếu điểm đúng quy tắc (trong khoảng từ 0 - 10), ta tính điểm trung bình rồi tiến hành xét:
#Nếu điểm trung bình lớn hơn hoặc bằng 8, toán hoặc văn lớn hơn hoặc bằng 8 và không có điểm nào dưới 6.5 thì in ra “Học sinh giỏi”
#Nếu không đủ điều kiện học sinh giỏi ta xét nếu điểm trung bình lớn hơn hoặc bằng 6.5, toán hoặc văn lớn hơn hoặc bằng 6.5 và không có điểm nào dưới 5 thì in ra “Học sinh khá”
#Nếu không đủ điều kiện học sinh khá ta xét nếu điểm trung bình lớn hơn hoặc bằng 5, toán hoặc văn lớn hơn hoặc bằng 5 và không có điểm nào dưới 3.5 thì in ra “Học sinh trung bình”
#Nếu không đủ điều kiện học sinh trung bình ta xét nếu điểm trung bình lớn hơn hoặc bằng 3.5, toán hoặc văn lớn hơn hoặc bằng 3.5 và không có điểm nào dưới 2 thì in ra “Học sinh yếu”
#Nếu không đủ điều kiện học sinh yếu ta in ra “Học sinh kém”
Toan = float(input("Nhập điểm toán: "))
while(Toan < 0 or Toan > 10):
    print("Vui lòng nhập đúng quy tắc (0 - 10) !!")
    Toan = float(input("Nhập điểm toán: "))
Van = float(input("Nhập điểm văn: "))
while(Van < 0 or Van > 10):
    print("Vui lòng nhập đúng quy tắc (0 - 10) !!")
    Van = float(input("Nhập điểm văn: "))
Anh = float(input("Nhập điểm anh: "))
while(Anh < 0 or Anh > 10):
    print("Vui lòng nhập đúng quy tắc (0 - 10) !!")
    Anh = float(input("Nhập điểm anh: "))
TB = (Toan + Van + Anh) / 3
if (TB >= 8) and (Toan >= 8 or Van >=8) and Anh > 6.5:
    print("Học sinh giỏi")
elif (TB >= 6.5) and (Toan >= 6.5 or Van >= 6.5) and Anh > 5:
    print("Học sinh khá")
elif (TB >= 5) and (Toan >= 5 or Van >= 5) and Anh > 3.5:
    print("Học sinh trung bình")
elif (TB >= 3.5) and (Toan >= 3.5 or Van >= 3.5) and Anh > 2:
    print("Học sinh yếu")
else:
    print("Học sinh kém")