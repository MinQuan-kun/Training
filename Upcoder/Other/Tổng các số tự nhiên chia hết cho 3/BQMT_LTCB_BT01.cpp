#include<bits/stdc++.h>
using namespace std;
long long res(long long n) {
    long long k = (n - 1) / 3;
        return 3 * k * (k + 1) / 2; 
}

int main()
{
    long long n;
    cin >> n;
    cout << res(n);
    return 0;
}