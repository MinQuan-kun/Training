#include<bits/stdc++.h>
using namespace std;
int Giaithua(int n)
{
    if(n == 0 || n == 1)
        return 1;
    return n * Giaithua(n - 1);
}
int main()
{
    double x;
    int n;
    cin >> x >> n;
    double tong = 0;
    for(int i = 1; i <= n; i++)
        tong += pow(x, i)/Giaithua(i);
    cout << fixed << setprecision(2) << tong;
    return 0;
}