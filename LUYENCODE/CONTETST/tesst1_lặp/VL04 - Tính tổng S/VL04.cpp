#include<bits/stdc++.h>
using namespace std;
int main()
{
    double n;
    cin >> n;
    double s = 0;
    for(double i = 2.0; i <= n; i++)
        s += 1.0 / i;
    cout << fixed << setprecision(4) << s;
    return 0;
}