#include<bits/stdc++.h>
using namespace std;
long long solve(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if(b == 0)
        return 0;
    res = solve((a << 1) % c, b >> 1, c);
    if(b & 1)
        res = (res + a) % c;
    return res;
}
int main()
{
    long long a, b, c;
    cin >> a >> b >> c;
    cout << solve(a, b, c);
    return 0;
}