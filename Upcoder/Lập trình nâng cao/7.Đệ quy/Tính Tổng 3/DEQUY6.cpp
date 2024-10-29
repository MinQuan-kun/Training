#include<bits/stdc++.h>
using namespace std;
long long Fib(long long n)
{
    if(n == 1)
        return 1;
    return n *Fib(n - 1);
}
double Dequy(double x, long long n)
{
    if(n == 0)
        return x;
    return Dequy(x , n - 1) + ((( pow(-1, n)) * (pow(x, 2 * n + 1))) / Fib(2 * n + 1));
}
int main()
{
    long long n;
    double x;
    cin >> n >> x;
    double S = Dequy(x, n);
    cout <<  roundf(S * 1000) / 1000;
}