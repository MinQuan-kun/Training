n, m = map(int, input().split())
s = 1
t = 0

while n:
    s *= n % 10
    n //= 10

for i in range(m, 0, -1):
    if m % i == 0:
        t += i

if t == s:
    print("YES")
else:
    print("NO")
