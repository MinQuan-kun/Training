class DaThuc:
    def __init__(self):
        self.n = 0
        self.A = []

    # Hàm nhập
    @staticmethod
    def from_input():
        dt = DaThuc()
        dt.n = int(input())
        dt.A = list(map(int, input().split()))
        return dt

    # Hàm xuất
    def __str__(self):
        is_first = True
        result = ""
        for i in range(self.n + 1):
            coef = self.A[i]
            exp = self.n - i
            if coef == 0:
                continue
            if not is_first:
                result += "+" if coef > 0 else ""
            else:
                is_first = False
            if abs(coef) != 1 or exp == 0:
                result += str(coef)
            elif coef == -1:
                result += "-"
            if exp > 0:
                result += "x"
            if exp > 1:
                result += "^" + str(exp)
        return "0" if is_first else result

    # Hàm tính đạo hàm
    def dao_ham(self):
        res = DaThuc()
        if self.n == 0:
            res.n = 0
            res.A.append(0)
            return res
        res.n = self.n - 1
        for i in range(self.n):
            res.A.append(self.A[i] * (self.n - i))
        return res


if __name__ == "__main__":
    p = DaThuc.from_input()
    print(p)
    p1 = p.dao_ham()
    print(p1)
    p2 = p1.dao_ham()
    print(p2, end="")
