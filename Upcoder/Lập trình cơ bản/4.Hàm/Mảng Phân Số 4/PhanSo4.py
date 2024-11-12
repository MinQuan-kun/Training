import math

class PS:
    def __init__(self, tu, mau):
        self.tu = tu
        self.mau = mau

    def rutgon(self):
        gcd = math.gcd(self.tu, self.mau)
        self.tu //= gcd
        self.mau //= gcd
        return self

    def __gt__(self, other):
        return self.tu * other.mau > self.mau * other.tu

    def __str__(self):
        self.rutgon()
        return "{}/{}".format(self.tu, self.mau)

def main():
    a = []
    try:
        while True:
            tu, mau = map(int, input().split())
            a.append(PS(tu, mau))
    except EOFError:
        pass

    min_fraction = a[0]
    for fraction in a:
        if min_fraction > fraction:
            min_fraction = fraction

    print(min_fraction, end = "")

if __name__ == "__main__":
    main()
