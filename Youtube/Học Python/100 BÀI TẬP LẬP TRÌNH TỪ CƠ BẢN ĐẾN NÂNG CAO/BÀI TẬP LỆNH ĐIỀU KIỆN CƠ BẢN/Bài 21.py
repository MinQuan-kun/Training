#Ngày vào ngày, tháng. Hãy tính và in ra xem ngày nhập vào cách ngày đầu năm bao nhiêu ngày (giả sư năm đó không phải là năm nhuận)
Day = int(input("Nhập vào ngày: "))
Month = int(input("Nhập vào tháng: "))
if(Month <= 8):
    Sothang_31 = Month // 2
    Sothang_30 = (Month - 1) // 2 
else:
    Sothang_31 = (Month + 1) // 2
    Sothang_30 = Month // 2 - 1
songay = Sothang_31 * 31 + Sothang_30 * 30 + Day
if(Month > 2):
    songay -= 2
print("Cách ngày đầu năm ", songay,"ngày!")