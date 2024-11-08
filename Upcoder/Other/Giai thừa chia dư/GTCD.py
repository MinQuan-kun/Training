MOD = 10**9 + 7
MAX_N = 10**6  

factorials = [1] * (MAX_N + 1)
for i in range(2, MAX_N + 1):
    factorials[i] = (factorials[i - 1] * i) % MOD

a = int(input())
array = []
for _ in range(a):
    element = int(input())
    if element <= MAX_N:
        array.append(factorials[element])
# Xuất kết quả
for result in array:
    print(result)
