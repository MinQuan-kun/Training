n, m = map(int, input().split())

a = []
print()
for i in range(n):
    row = list(map(int, input().split()))
    a.append(row)

max_value = a[0][0]
for i in range(n):
    for j in range(m):
        if a[i][j] > max_value:
            max_value = a[i][j]

print(max_value, end="")
