#Nhập tháng, năm. Hãy cho biết tháng đó có bao nhiêu ngày
Month = int(input("Nhập vào tháng: "))
Year = int(input("Nhập vào năm: "))
if(Month == 1 or Month == 3 or Month == 5 or Month == 7 or Month == 8 or Month == 10 or Month == 12):
    print("Tháng đó có 31 ngày!")
if(Month == 4 or Month == 6 or Month == 9 or Month == 11):
    print("Tháng đó có 30 ngày!")
if(Month == 2):   
    if((Year % 4 == 0 and Year % 100 != 0) or Year % 400 == 0):
        print("Tháng đó có 29 ngày!")
    else:
        print("Tháng đó có 28 ngày!")
