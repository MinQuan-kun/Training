# Nhập chiều dài và chiều rộng của hình chữ nhật
a, b = map(int, input().split())

for i in range(1, a + 1):
    for j in range(1, b + 1):
        print("*", end="")
    if i < a:
        print()
