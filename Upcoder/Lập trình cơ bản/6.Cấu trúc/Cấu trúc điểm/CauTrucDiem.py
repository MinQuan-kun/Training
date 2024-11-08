import math

class Diem:
    def __init__(self, x=0, y=0):
        self.x = x
        self.y = y

    def doDai(self, other):
        return math.sqrt((other.x - self.x) ** 2 + (other.y - self.y) ** 2)

def Thanghang(A, B, C):
    Chuvi = A.doDai(B) + C.doDai(A) + B.doDai(C)
    p = Chuvi / 2
    s = math.sqrt(p * (p - A.doDai(B)) * (p - C.doDai(A)) * (p - B.doDai(C)))
    return s == 0

# Input
A = Diem(*map(int, input().split()))
B = Diem(*map(int, input().split()))
C = Diem(*map(int, input().split()))

# Output
print("({},{}) ({},{}) ({},{})".format(A.x, A.y, B.x, B.y, C.x, C.y))
print("{:.3f}".format(A.doDai(B)))
print("{:.3f}".format(C.doDai(A)))
print("{:.3f}".format(B.doDai(C)))
if Thanghang(A, B, C):
    print(-1)
else:
    Chuvi = A.doDai(B) + C.doDai(A) + B.doDai(C)
    p = Chuvi / 2
    s = math.sqrt(p * (p - A.doDai(B)) * (p - C.doDai(A)) * (p - B.doDai(C)))
    print("{:.3f} {:.3f}".format(s, Chuvi))
