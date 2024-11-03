#include<bits/stdc++.h>
using namespace std;
struct DIEM
{
    int x, y;
};
// Hàm tính khoảng cách giữa 2 điểm
double khoangCach(DIEM d1, DIEM d2) {
    return sqrt(pow(d2.x - d1.x, 2) + pow(d2.y - d1.y, 2));
}

// Hàm kiểm tra 2 điểm có trùng nhau không
bool kiemTraTrung(DIEM d1, DIEM d2) {
    return (d1.x == d2.x && d1.y == d2.y);
}
struct TAMGIAC{
    DIEM A, B, C;
};

// Hàm tính chu vi tam giác
double tinhChuVi(TAMGIAC tg) {
    return khoangCach(tg.A, tg.B) + khoangCach(tg.B, tg.C) + khoangCach(tg.C, tg.A);
}

// Hàm so sánh chu vi của 2 tam giác
bool operator <(TAMGIAC tg1, TAMGIAC tg2) {
    return tinhChuVi(tg1) < tinhChuVi(tg2);
}

// Hàm kiểm tra 2 tam giác có trùng nhau không
bool kiemTraTrungTamGiac(TAMGIAC tg1, TAMGIAC tg2) {
    return 
    (kiemTraTrung(tg1.A, tg2.A) && kiemTraTrung(tg1.B, tg2.B) && kiemTraTrung(tg1.C, tg2.C)) 
            || 
    (kiemTraTrung(tg1.A, tg2.B) && kiemTraTrung(tg1.B, tg2.C) && kiemTraTrung(tg1.C, tg2.A)) 
            ||
    (kiemTraTrung(tg1.A, tg2.C) && kiemTraTrung(tg1.B, tg2.A) && kiemTraTrung(tg1.C, tg2.B));
}


istream & operator >> (istream & in, DIEM & n)
{
    in >> n.x >> n.y;
    return in;
}

ostream & operator << (ostream & out, DIEM n)
{
    out << "(" << n.x << "," << n.y << ")";
    return out;
}

istream & operator >> (istream & in, TAMGIAC & n)
{
    in >> n.A >> n.B >> n.C;
    return in;
}

ostream & operator << (ostream & out, TAMGIAC n)
{
    out << n.A << n.B << n.C;
    return out;
}
int main()
{
    TAMGIAC a, b;
    cin >> a >> b;
    cout << a << endl << b << endl;
    if(a < b)
        cout << "TRUE";
    else
        cout << "FALSE";
    cout << endl;
    if(kiemTraTrungTamGiac(a, b))
        cout << "TRUE";
    else
        cout << "FALSE";
    return 0;
}