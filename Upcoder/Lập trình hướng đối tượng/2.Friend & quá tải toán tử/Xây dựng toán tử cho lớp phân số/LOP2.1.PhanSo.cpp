#include <bits/stdc++.h>
using namespace std;

class Phanso {
private:
    int tu, mau;
    int UCLN(int a, int b) {
        return (b == 0) ? a : UCLN(b, a % b);
    }

public:
    Phanso(); 
    Phanso(int tu, int mau);
    Phanso(int n);
    Phanso(const Phanso &ps);
    ~Phanso();

    void Nhap();
    void Xuat();
    void RutGon();
    void XuatTu();
    void XuatMau();
    void XuatNghich();
    void Tong();

    // Toán tử số học
    Phanso operator+(const Phanso& b);
    Phanso operator-(const Phanso& b);
    Phanso operator*(const Phanso& b);
    Phanso operator/(const Phanso& b);
    Phanso& operator=(const Phanso& b);
    Phanso& operator+=(const Phanso& b);
    Phanso& operator-=(const Phanso& b);

    // Toán tử so sánh
    bool operator>(const Phanso& b) const;
    bool operator<(const Phanso& b) const;
    bool operator>=(const Phanso& b) const;
    bool operator<=(const Phanso& b) const;
    bool operator==(const Phanso& b) const;
    bool operator!=(const Phanso& b) const;

    // Toán tử ++, --
    Phanso& operator++();    // Tiền tố ++ps
    Phanso operator++(int);  // Hậu tố ps++
    Phanso& operator--();    // Tiền tố --ps
    Phanso operator--(int);  // Hậu tố ps--

    // Toán tử nhập, xuất
    friend istream& operator>>(istream& in, Phanso& ps);
    friend ostream& operator<<(ostream& out, const Phanso& ps);
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

// Toán tử nhập
istream& operator>>(istream& in, Phanso& ps) {
    in >> ps.tu >> ps.mau;
    if (ps.mau == 0) ps.mau = 1;  // Tránh mẫu số 0
    ps.RutGon();
    return in;
}

// Toán tử xuất
ostream& operator<<(ostream& out, const Phanso& ps) {
    out << ps.tu << "/" << ps.mau;
    return out;
}

// Toán tử số học
Phanso Phanso::operator+(const Phanso& b) {
    return Phanso(tu * b.mau + b.tu * mau, mau * b.mau);
}
Phanso Phanso::operator-(const Phanso& b) {
    return Phanso(tu * b.mau - b.tu * mau, mau * b.mau);
}
Phanso Phanso::operator*(const Phanso& b) {
    return Phanso(tu * b.tu, mau * b.mau);
}
Phanso Phanso::operator/(const Phanso& b) {
    return Phanso(tu * b.mau, mau * b.tu);
}
Phanso& Phanso::operator=(const Phanso& b) {
    tu = b.tu;
    mau = b.mau;
    return *this;
}
Phanso& Phanso::operator+=(const Phanso& b) {
    *this = *this + b;
    return *this;
}
Phanso& Phanso::operator-=(const Phanso& b) {
    *this = *this - b;
    return *this;
}

// Toán tử so sánh
bool Phanso::operator>(const Phanso& b) const {
    return tu * b.mau > b.tu * mau;
}
bool Phanso::operator<(const Phanso& b) const {
    return tu * b.mau < b.tu * mau;
}
bool Phanso::operator>=(const Phanso& b) const {
    return tu * b.mau >= b.tu * mau;
}
bool Phanso::operator<=(const Phanso& b) const {
    return tu * b.mau <= b.tu * mau;
}
bool Phanso::operator==(const Phanso& b) const {
    return tu * b.mau == b.tu * mau;
}
bool Phanso::operator!=(const Phanso& b) const {
    return !(*this == b);
}

// Toán tử ++, --
Phanso& Phanso::operator++() {  // Tiền tố ++ps
    tu += mau;
    return *this;
}
Phanso Phanso::operator++(int) { // Hậu tố ps++
    Phanso temp = *this;
    tu += mau;
    return temp;
}
Phanso& Phanso::operator--() {  // Tiền tố --ps
    tu -= mau;
    return *this;
}
Phanso Phanso::operator--(int) { // Hậu tố ps--
    Phanso temp = *this;
    tu -= mau;
    return temp;
}