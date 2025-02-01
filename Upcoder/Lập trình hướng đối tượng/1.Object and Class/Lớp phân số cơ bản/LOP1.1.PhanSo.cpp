#include<bits/stdc++.h>
using namespace std;
class PhanSo {
private:
    int tuSo;   // Tử số
    int mauSo;  // Mẫu số
public:
    void nhap();
    void xuat();
};

// Hàm chính
int main() {
    PhanSo ps;
    ps.nhap();
    ps.xuat();
    return 0;
}

void PhanSo::nhap()
{
    cin >> tuSo >> mauSo;
}

void PhanSo::xuat()
{
    cout << tuSo << "/" << mauSo;
}