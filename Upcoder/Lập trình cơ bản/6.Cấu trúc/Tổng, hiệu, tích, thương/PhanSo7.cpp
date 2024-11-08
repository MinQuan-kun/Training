#include <iostream>
#include <algorithm>
using namespace std;

struct PhanSo {
    int tu, mau;
};

// Hàm tính ước chung lớn nhất (UCLN)
int UCLN(int a, int b) {
    if (b == 0) 
        return a;
    return UCLN(b, a % b);
}

// Hàm rút gọn phân số
PhanSo rutGon(PhanSo a) {
    int ucln = UCLN(abs(a.tu), abs(a.mau));
    a.tu /= ucln;
    a.mau /= ucln;
    if (a.mau < 0) { // Đảm bảo mẫu số luôn dương
        a.tu = -a.tu;
        a.mau = -a.mau;
    }
    return a;
}

// Nhập phân số
istream& operator >> (istream& in, PhanSo& ps) {
    in >> ps.tu >> ps.mau;
    return in;
}

// Xuất phân số
ostream& operator << (ostream& out, PhanSo ps) {
    if (ps.tu == 0) {
        out << 0;
    } else {
        out << ps.tu << "/" << ps.mau;
    }
    return out;
}

// Kiểm tra phân số hợp lệ (mẫu khác 0)
bool kiemTraPhanSo(PhanSo ps) {
    return ps.mau != 0;
}

// Các phép toán cho phân số
PhanSo operator + (PhanSo a, PhanSo b) {
    PhanSo c;
    c.tu = a.tu * b.mau + a.mau * b.tu;
    c.mau = a.mau * b.mau;
    return rutGon(c);
}

PhanSo operator - (PhanSo a, PhanSo b) {
    PhanSo c;
    c.tu = a.tu * b.mau - a.mau * b.tu;
    c.mau = a.mau * b.mau;
    return rutGon(c);
}

PhanSo operator * (PhanSo a, PhanSo b) {
    PhanSo c;
    c.tu = a.tu * b.tu;
    c.mau = a.mau * b.mau;
    return rutGon(c);
}

PhanSo operator / (PhanSo a, PhanSo b) {
    PhanSo c;
    c.tu = a.tu * b.mau;
    c.mau = a.mau * b.tu;
    return rutGon(c);
}

int main() {
    PhanSo A, B;
    cin >> A >> B;

    // Kiểm tra xem có phân số nào có mẫu bằng 0 không
    if (!kiemTraPhanSo(A) || !kiemTraPhanSo(B)) {
        cout << -1;
        return 0;
    }

    // Tính và in kết quả các phép toán
    PhanSo tong = A + B;
    cout << tong << endl;

    PhanSo hieu = A - B;
    cout << hieu << endl;

    PhanSo tich = A * B;
    cout << tich << endl;

    // Kiểm tra nếu phân số B có mẫu khác 0 để thực hiện phép chia
    if (B.tu != 0) {
        PhanSo thuong = A / B;
        cout << thuong;
    }

    return 0;
}
