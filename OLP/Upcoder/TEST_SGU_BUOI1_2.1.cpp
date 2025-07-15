#include<bits/stdc++.h>
using namespace std;
long long mul(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if(b == 0)
        return 0;
    res = mul((a << 1) % c, (b >> 1) % c, c);
    if(b & 1)
        res = (res + a) % c;
    return res;
}

long long solve(long long a, long long b, long long c)
{
    long long res = 1;
    a %= c;
    if(b == 0)
        return 1;
    res = solve((a * a) % c, (b >> 1), c );
    if(b & 1)
        res = mul(res, a, c);
    return res;
}
int main()
{
    long long a, b , c;
    cin >> a >> b >> c;
    cout << solve(a, b, c);
    return 0;
}