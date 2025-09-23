#include <bits/stdc++.h>
using namespace std;

long n;
double x;

double gt(long n)
{
    double x=1;
    for (long i=1; i<=n; i++)
        x=x*1.0*i;
    return x;
}

double sin(long i, double x)
{
    if (i==0)
        return x;
    return sin(i-1,x) + (double)pow(-1,i)*(double)pow(x,2*i+1)/(double)gt(2*i+1);
}

double cos(long i, double x)
{
    if (i==0)
        return 1;
    return cos(i-1,x) + (double)pow(-1,i)*(double)pow(x,2*i)/(double)gt(2*i);
}

int main()
{
    n = 100;
    cin >> x;
    double kq1 = roundf(sin(n,x)* 100) / 100;
    double kq2 = roundf(cos(n,x)*100) / 100;
    cout << kq1 << endl<<kq2;
    return 0;
}
