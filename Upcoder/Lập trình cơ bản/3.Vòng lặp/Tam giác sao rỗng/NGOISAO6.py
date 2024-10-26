# Nhập chiều cao của tam giác
h = int(input())

# In tam giác cân sao rỗng
for i in range(h):
    for j in range(2 * h - 1):
        if i == h - 1 or i + j == h - 1 or j - i == h - 1:
            print("*", end="")
        else:
            print(" ", end="")
    if i < h - 1:
        print()
