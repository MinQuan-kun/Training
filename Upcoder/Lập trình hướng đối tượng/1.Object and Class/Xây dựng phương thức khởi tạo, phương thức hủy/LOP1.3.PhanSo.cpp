#include<bits/stdc++.h>
using namespace std;
class Phanso
{
    private:
    int tu, mau;
    int UCLN(int a, int b)
    {
        if(b == 0)
            return a;
        return UCLN(b, a % b);
    }
    public:
    Phanso(); // Mặc định
    Phanso(int tu, int mau); // Phương thức tạo phân số có sẵn
    Phanso(int n); // Phương thức tạo phân số từ số nguyên
    Phanso(const Phanso &ps); // Phương thức copy phân số
    ~Phanso(); // Phương thức hủy
    void Xuat();
    void Nhap();
    void RutGon();
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
    ps.RutGon();
    ps.Tong();
}
Phanso::Phanso()
{
    tu = 0;
    mau = 1;
}
Phanso::Phanso(int _tu, int _mau)
{
    if(_mau == 0)
    {
        tu = 0;
        mau = 1;
    }
    tu = _tu;
    mau = _mau;
}
Phanso::Phanso(int _n)
{
    tu = _n;
    mau = 1;
}
Phanso::Phanso(const Phanso &p)
{
    tu = p.tu;
    mau = p.mau;
}
Phanso::~Phanso(){
    tu = 0;
    mau = 1;
}

void Phanso::Nhap()
{
    cin >> tu >> mau;
}

void Phanso::Xuat()
{
    cout << tu << "/" << mau << endl; 
}

void Phanso::XuatMau()
{
    cout << mau << endl;
}

void Phanso::XuatTu()
{
    cout << tu << endl;
}

void Phanso::RutGon()
{
    int ucln = UCLN(tu, mau);
    tu /= ucln;
    mau /= ucln;
    cout << tu << "/" << mau << endl;
}

void Phanso::XuatNghich()
{
    cout << mau << "/" << tu << endl;
}
void Phanso::Tong()
{
    int a = tu, b = mau, c = mau, d = tu;
    int T = a * d + b * c;
    int M = b * d;
    int ucln = UCLN(T, M); 
    T /= ucln;
    M /= ucln;
    cout << T << "/" << M;
}