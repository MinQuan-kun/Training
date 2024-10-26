# Nhập chiều dài và chiều rộng của hình chữ nhật
a, b = map(int, input().split())

for i in range(1, a + 1):
    for j in range(1, b + 1):
        if i == 1 or j == 1 or i == a or j == b:
            print("*", end="")
        else:
            print(" ", end="")
    if i < a:
        print()
