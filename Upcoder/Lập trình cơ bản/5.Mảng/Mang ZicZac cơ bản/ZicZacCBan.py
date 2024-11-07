# Đọc n và m từ đầu vào
n, m = map(int, input().split())

# Tạo mảng 2 chiều và điền các phần tử
a = []
temp = 1
for i in range(n):
    row = []
    for j in range(m):
        row.append(temp)
        temp += 1
    a.append(row)

# In mảng theo thứ tự yêu cầu
c = 1
for i in range(n):
    if c % 2 != 0:  # Hàng lẻ: in từ trái sang phải
        for j in range(m):
            print(a[i][j], end=' ')
    else:  # Hàng chẵn: in từ phải sang trái
        for j in range(m - 1, -1, -1):
            print(a[i][j], end=' ')
    c += 1
    print()
