#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long long res = 0;
    for(int k = 5; k <= n; k*=5)
        res += (n/k);
    cout << res;
    return 0;
}