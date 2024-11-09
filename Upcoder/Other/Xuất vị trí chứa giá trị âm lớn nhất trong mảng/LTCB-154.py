n = int(input())
arr = list(map(float, input().split()))

min_val = -99999999
pos = -1

for i in range(n):
    if arr[i] < 0 and (pos == -1 or arr[i] < min_val):
        min_val = arr[i]
        pos = i

print(pos)
