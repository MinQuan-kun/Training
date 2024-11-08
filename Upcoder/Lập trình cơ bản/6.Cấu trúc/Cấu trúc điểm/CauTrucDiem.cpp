#include<bits/stdc++.h>
using namespace std;
struct Diem
{
    int x, y;
    double doDai(Diem other) 
    {
        return sqrt(pow(other.x - x, 2) + pow(other.y - y, 2));
    }
};

istream & operator >> (istream & in, Diem & n)
{
    in >> n.x >> n.y;
    return in;
}

ostream & operator << (ostream & out, Diem  n)
{
    out << "(" << n.x << "," << n.y << ") ";
    return out;
}
bool Thanghang(Diem A, Diem B, Diem C)
{
    double Chuvi = A.doDai(B) + C.doDai(A) + B.doDai(C);
    double p = Chuvi / 2;
    double s = sqrt(p*(p - A.doDai(B))* (p - C.doDai(A)) * (p-B.doDai(C)));
    if(s == 0 )
        return true;
    return false;
}
int main()
{
    Diem A, B, C;
    cin >> A >> B >> C;
    cout << A << B << C << endl;
    cout << fixed << setprecision(3) << A.doDai(B) << endl;
    cout << fixed << setprecision(3) << C.doDai(A) << endl;
    cout << fixed << setprecision(3) << B.doDai(C) << endl;
    if(Thanghang(A, B, C))
        cout << -1;
    else
    {
        double Chuvi = A.doDai(B) + C.doDai(A) + B.doDai(C);
        double p = Chuvi / 2;
        double s = sqrt(p*(p - A.doDai(B))* (p - C.doDai(A)) * (p-B.doDai(C)));
        cout << fixed << setprecision(3) << s << " " << Chuvi;
    }
    
    return 0;
}