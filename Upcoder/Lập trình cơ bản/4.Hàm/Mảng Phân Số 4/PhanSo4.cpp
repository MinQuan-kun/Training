#include<bits/stdc++.h>
using namespace std;
struct PS
{
    int tu, mau;
};
int UCLN(int a, int b){
    if(b == 0)
        return a;
    else
        return UCLN(b, a % b);
}
PS rutgon(PS a){
    int c = UCLN(a.tu, a.mau);
    a.tu /= c;
    a.mau /= c;
    return a;
}
bool operator > (PS a, PS b){
    return(a.tu * b.mau > a.mau * b.tu);
}
istream & operator >> (istream & in, PS& n){
    in >> n.tu >> n.mau;
    return in;
}
ostream & operator << (ostream & out, PS n){
    n = rutgon(n);
    out << n.tu<< "/" <<n.mau;
    return out;
}
int main()
{
    vector<PS> a;
    PS c;
    while(cin >> c)
    a.push_back(c);
    PS min = a[0];
    for(int i = 0; i < a.size(); i++)
        if(min > a[i])
            min = a[i];
    cout << min;
    return 0;
}