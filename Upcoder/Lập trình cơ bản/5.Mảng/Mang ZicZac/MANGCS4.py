n, m = map(int, input().split())

a = []
for i in range(n):
    row = list(map(int, input().split()))
    a.append(row)

temp = []
for i in range(n):
    for j in range(m):
        temp.append(a[i][j])

temp.sort()

index = 0
for i in range(n):
    for j in range(m):
        a[i][j] = temp[index]
        index += 1

for i in range(n):
    if i % 2 == 0:
        print(*a[i])
    else:
        print(*a[i][::-1])
