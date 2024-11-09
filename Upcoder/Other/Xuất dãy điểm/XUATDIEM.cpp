#include<bits/stdc++.h>
using namespace std;
struct Diem
{
    int x, y;
    
};
struct M1C
{
    Diem a[1000];
    int size = 0;
};
istream & operator >>(istream & in, Diem & n)
{
    in >> n.x >> n.y;
    return in;
}
ostream & operator <<(ostream & out, Diem n)
{
    out << "(" << n.x << "," << n.y << ")";
    return out;
}
istream & operator >>(istream & in, M1C & x)
{
    Diem k;
    while(in >> k)
    {
        x.a[x.size] = k;
        x.size++;
    }
    return in;
}
ostream & operator <<(ostream & out, M1C x)
{
    for(int i = 0; i < x.size; i++)
        out << x.a[i];
    return out;
}
bool operator ==(Diem a, Diem b)
{
    return a.x == b.x && a.y == b.y;
}

bool operator<(Diem a, Diem b) {
    if (a.x < b.x) 
        return true;
    if (a.x == b.x && a.y < b.y) 
        return true;
    return false;
}
Diem operator +(Diem a, Diem b)
{
    Diem c;
    c.x = a.x + b.x;
    c.y = a.y + b.y;
    return c;
}
M1C operator +(M1C x)
{
    
}
int main()
{
    M1C x;
    cin >> x;
    Diem Max = x.a[0];
    Diem Tong = x.a[0];
    for(int i = 1; i < x.size; i++)
    {
        if(Max < x.a[i])
            Max = x.a[i];
        Tong = Tong + x.a[i];
    }
    cout << Max << endl << Tong;
    return 0;
}