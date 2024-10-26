#include<bits/stdc++.h>
using namespace std;

struct DaThuc {
    int n;
    vector<int> A;

    // Quá tải toán tử nhập >>
    friend istream& operator>>(istream& in, DaThuc& x) {
        in >> x.n;
        x.A.resize(x.n + 1);
        for (int i = 0; i <= x.n; ++i) {
            in >> x.A[i];
        }
        return in;
    }

    // Quá tải toán tử xuất <<
    friend ostream& operator<<(ostream& out, const DaThuc& x) {
        bool isFirst = true;
        for (int i = 0; i <= x.n; ++i) {
            int coef = x.A[i];
            int exp = x.n - i;

            if (coef == 0) continue; // Bỏ qua hệ số 0

            if (!isFirst) {
                out << (coef > 0 ? "+" : ""); // Thêm dấu cộng cho các hệ số dương không phải đầu tiên
            } else {
                isFirst = false;
            }

            // Xuất hệ số
            if (abs(coef) != 1 || exp == 0) out << coef;
            else if (coef == -1) out << "-";

            // Xuất phần biến và mũ
            if (exp > 0) out << "x";
            if (exp > 1) out << "^" << exp;
        }
        if (isFirst) out << "0"; // Nếu đa thức là 0
        out << endl;
        return out;
    }

    // Hàm tính đạo hàm
    DaThuc daoHam() const {
        DaThuc res;
        if (n == 0) { // Đạo hàm của hằng số là 0
            res.n = 0;
            res.A.push_back(0);
            return res;
        }
        res.n = n - 1;
        for (int i = 0; i < n; ++i) {
            res.A.push_back(A[i] * (n - i));
        }
        return res;
    }
};

int main() {
    DaThuc p;
    cin >> p;
    cout << p;                 // Xuất đa thức vừa nhập
    DaThuc p1 = p.daoHam();
    cout << p1;                // Xuất đạo hàm cấp 1
    DaThuc p2 = p1.daoHam();
    cout << p2;                // Xuất đạo hàm cấp 2
    return 0;
}
