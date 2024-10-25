N, M, K = map(int, input().split())
Q = 0
W = 0
while N != 0:
    Q += N % 10
    N //= 10

while M >= 9:
    M //= 10
    W = M

if Q + W == K:
    print("Yes", end="")
else:
    print("No", end="")
