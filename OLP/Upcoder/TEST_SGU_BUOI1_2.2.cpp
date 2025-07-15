#include<bits/stdc++.h>
using namespace std;
long long Mul(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if(b == 0)
        return 0;
    res = Mul((a << 1) % c, (b >> 1) % c, c);
    if(b & 1)
        res = (res + a) % c;
    return res;
}

long long Pow(long long a, long long b, long long c)
{
    long long res = 1;
    a %= c;
    if(b == 0)
        return 1;
    long long aa = Mul(a, a, c);
    res = Pow(aa % c, b >> 1, c);
    if(b & 1)
        res = Mul(res, a, c);
    return res;
}

int main()
{
    long long a, b, c;
    cin >> a >> b >> c;
    cout << Pow(a, b, c);
    return 0;
}