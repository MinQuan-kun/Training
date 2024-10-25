n = int(input("Nhập n: "))
cnt = 1
sao = n * 2 - 1
temp = 2

for i in range(1, n + 1):
    # In khoảng trắng bên trái
    for j in range(1, cnt):
        print(" ", end="")
    
    if i != n:
        # In các dấu sao cho hàng hiện tại
        for e in range(sao):
            print("*", end="")
        # In khoảng trắng bên phải
        for j in range(1, cnt):
            print(" ", end="")
        print()
    else:
        # Dòng cuối cùng
        print("*", end="")
        for j in range(n - 1):
            print(" ", end="")
    
    sao -= 2  # Giảm số lượng dấu sao mỗi hàng
    cnt += 1  # Tăng số lượng khoảng trắng mỗi hàng
