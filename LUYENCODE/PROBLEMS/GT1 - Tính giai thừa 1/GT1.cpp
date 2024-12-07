#include<bits/stdc++.h>
using namespace std;
long long Giaithua(long long n)
{
    if(n == 1 || n == 0)
        return 1;
    return n * Giaithua(n - 1);
}
int main()
{
    long long n;
    cin >> n;
    cout << Giaithua(n);
    return 0;
}