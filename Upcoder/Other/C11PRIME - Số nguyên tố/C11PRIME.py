import math

def is_prime(x):
    if x < 2:
        return False
    for i in range(2, int(math.sqrt(x)) + 1):
        if x % i == 0:
            return False
    return True

# Đọc đầu vào từ một dòng
N = int(input().strip())

if N < 2:
    print(0)
else:
    for q in range(2, int(math.log2(N)) + 1):
        p = int(N ** (1 / q))
        
        for candidate in (p, p + 1):
            if is_prime(candidate) and candidate ** q == N:
                print(candidate, q, end="")
                exit()
                
    print(0, end="")
