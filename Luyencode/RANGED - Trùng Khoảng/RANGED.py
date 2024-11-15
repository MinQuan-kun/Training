# Nhập các giá trị trên cùng một dòng
a1, b1, a2, b2 = map(int, input().split())

# Kiểm tra điều kiện giao nhau
if max(a1, a2) <= min(b1, b2):
    print("YES")
else:
    print("NO")