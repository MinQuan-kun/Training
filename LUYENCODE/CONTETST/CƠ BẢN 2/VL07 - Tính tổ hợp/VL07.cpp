#include<bits/stdc++.h>
using namespace std;
double Giaithua(double n)
{
    if(n == 0 || n == 1)
        return 1;
    return n * Giaithua(n - 1);
}
int main()
{
    double n, k;
    cin >> n >> k;
    cout << Giaithua(n) /(Giaithua(k) * Giaithua(n - k));
    return 0;
}