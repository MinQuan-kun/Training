#include<bits/stdc++.h>
using namespace std;
class TapSoMoi
{
    private:
    int x, y, z, t;
    public:
    TapSoMoi();
    TapSoMoi(int a, int b, int c, int d);
    friend istream& operator>>(istream& in, TapSoMoi& Ts);
    friend ostream& operator<<(ostream& out, TapSoMoi Ts);
    TapSoMoi operator +(const TapSoMoi & b);
    TapSoMoi& operator=(const TapSoMoi& b);
    bool operator<(const TapSoMoi& b);
    TapSoMoi& operator++(int);
};

int main()
{
    TapSoMoi a, b;
    cin >> a >> b;
    cout << a << endl << b << endl;
    if(a < b)
        cout << "true" << endl;
    else
        cout << "false" << endl;
    cout << a + b << endl;
    cout << a++;
}
TapSoMoi::TapSoMoi()
{
    x = 0;
    y = 0;
    z = 0;
    t = 0;
}
TapSoMoi::TapSoMoi(int a, int b, int c, int d)
{
    x = a;
    y = b;
    z = c;
    t = d;
}

istream& operator>>(istream& in, TapSoMoi & Ts)
{
    in >> Ts.x >> Ts.y >> Ts.z >> Ts.t;
    return in;
}

ostream& operator<<(ostream& out, TapSoMoi Ts)
{
    out <<"[TapSoMoi] " << Ts.x << ";" << Ts.y << ";" << Ts.z << ";" << Ts.t;
    return out;
}

TapSoMoi TapSoMoi::operator+(const TapSoMoi& b)
{
    TapSoMoi c;
    c.x = x + b.x;
    c.y = y + b.y;
    c.z = z + b.z;
    c.t = t + b.t;
    return c;
}

bool TapSoMoi::operator<(const TapSoMoi& b)
{
    int a = x + y + z + t;
    int a1 = b.x + b.y + b.z + b.t;
    return a < a1;
}
TapSoMoi& TapSoMoi::operator=(const TapSoMoi& b)
{
    x = b.x;
    y = b.y;
    z = b.z;
    t = b.t;
    return *this;
}
TapSoMoi& TapSoMoi::operator++(int)
{
    x++;
    t++;
    return *this;
}