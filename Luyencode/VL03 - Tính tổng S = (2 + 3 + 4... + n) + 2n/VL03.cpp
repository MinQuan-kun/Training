#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long s = 0;
    for(long long i = 2; i <= n; i++)
        s += i;
    cout << s + (2 * n);
    return 0;
}