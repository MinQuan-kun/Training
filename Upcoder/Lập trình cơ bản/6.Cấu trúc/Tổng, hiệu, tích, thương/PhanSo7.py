from math import gcd

class PhanSo:
    def __init__(self, tu, mau):
        self.tu = tu
        self.mau = mau

    # Hàm rút gọn phân số
    def rut_gon(self):
        ucln = gcd(abs(self.tu), abs(self.mau))
        self.tu //= ucln
        self.mau //= ucln
        if self.mau < 0:  # Đảm bảo mẫu số luôn dương
            self.tu = -self.tu
            self.mau = -self.mau

    # Hàm nhập phân số
    @classmethod
    def nhap(cls):
        tu, mau = map(int, input().split())
        return cls(tu, mau)

    # Hàm xuất phân số
    def xuat(self):
        if self.tu == 0:
            print(0)
        else:
            print("{}/{}".format(self.tu, self.mau))

    # Kiểm tra phân số hợp lệ (mẫu khác 0)
    @staticmethod
    def kiem_tra_phan_so(ps):
        return ps.mau != 0

    # Các phép toán phân số
    def __add__(self, other):
        result = PhanSo(self.tu * other.mau + self.mau * other.tu, self.mau * other.mau)
        result.rut_gon()
        return result

    def __sub__(self, other):
        result = PhanSo(self.tu * other.mau - self.mau * other.tu, self.mau * other.mau)
        result.rut_gon()
        return result

    def __mul__(self, other):
        result = PhanSo(self.tu * other.tu, self.mau * other.mau)
        result.rut_gon()
        return result

    def __truediv__(self, other):
        result = PhanSo(self.tu * other.mau, self.mau * other.tu)
        result.rut_gon()
        return result

def main():
    A = PhanSo.nhap()
    B = PhanSo.nhap()

    # Kiểm tra xem có phân số nào có mẫu bằng 0 không
    if not PhanSo.kiem_tra_phan_so(A) or not PhanSo.kiem_tra_phan_so(B):
        print(-1)
        return

    # Tính và in kết quả các phép toán
    tong = A + B
    tong.xuat()

    hieu = A - B
    hieu.xuat()

    tich = A * B
    tich.xuat()

    # Kiểm tra nếu phân số B có mẫu khác 0 để thực hiện phép chia
    if B.tu != 0:
        thuong = A / B
        thuong.xuat()

if __name__ == "__main__":
    main()
