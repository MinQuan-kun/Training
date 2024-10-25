import math
while 1 != 0:
    try:
        n = int(input())
        temp = n
        cnt = 0
        Sum = 0
        
        while temp != 0:
            cnt += 1
            temp //= 10
        temp = n
        while temp != 0:
            Sum += pow(temp % 10, cnt)
            temp //= 10
        if int(Sum) == n:
            print("YES")
        else:
            print("NO")
    except EOFError:
        break
