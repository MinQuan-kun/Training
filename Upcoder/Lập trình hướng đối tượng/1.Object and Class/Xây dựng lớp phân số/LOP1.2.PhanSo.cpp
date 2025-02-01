#include<bits/stdc++.h>
using namespace std;
class Phanso
{
    private:
    int Tu;
    int Mau;
    int UCLN(int a, int b) {
    if (b == 0) 
        return a;
    return UCLN(b, a % b);
    }
    public:
    void Nhap();
    void Xuat();
    void Rutgon();
    void XuatTu();
    void XuatMau();
    void XuatNghich();
    void Tong();
};

int main()
{
    Phanso ps;
    ps.Nhap();
    ps.Xuat();
    ps.XuatTu();
    ps.XuatMau();
    ps.XuatNghich();
    ps.Rutgon();
    ps.Tong();
}
void Phanso::Nhap()
{
    cin >> Tu >> Mau;
}
void Phanso::Xuat()
{
    cout << Tu << "/" << Mau << endl;
}
void Phanso::XuatTu()
{
    cout << Tu << endl;
}

void Phanso::XuatMau()
{
    cout << Mau << endl;
}
void Phanso::XuatNghich()
{
    cout << Mau << "/" << Tu << endl;
}
void Phanso::Rutgon()
{
    int ucln = UCLN(Tu, Mau);
    Tu /= ucln;
    Mau /= ucln;
    cout << Tu << "/" << Mau << endl;
}
void Phanso::Tong()
{
    int a = Tu, b = Mau, c = Mau, d = Tu;
    int T = a * d + b * c;
    int M = b * d;
    int ucln = UCLN(T, M);
    T /= ucln;
    M /= ucln;
    cout << T << "/" << M;
}