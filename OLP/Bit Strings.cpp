#include<bits/stdc++.h>
using namespace std;
long long temp = 1e9 + 7; // b
// long long mod(long long n)
// {
//     int res = 2;
//     for(int i = 2; i <= n; i++)
//         res*= 2
//     return res;
// }
int main()
{
    long long n;
    cin >> n;
    int res1 = 1;
    for(int i = 1; i <= n; i++)
    {
        res1 *= 2;
        res1 %= temp;
    }
    cout << res1;
    return 0;
}  