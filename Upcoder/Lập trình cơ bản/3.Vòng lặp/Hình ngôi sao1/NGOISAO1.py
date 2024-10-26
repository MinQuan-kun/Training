n = int(input()) # Nhập số dòng cần in
for i in range(1, n + 1): # Duyệt từ 1 đến n
    for j in range(1, i + 1): # In sao từ 1 đến i
        print("*", end="") # In sao không xuống dòng
    print() # Xuống dòng sau mỗi hàng
