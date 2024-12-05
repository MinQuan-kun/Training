#include<bits/stdc++.h>
using namespace std;
int main()
{
    float a;
    cin >> a;
    if(a >= 5)
        cout << fixed << setprecision(2) << 2 * pow(a, 2) + 5 * a + 9;
    else
        cout << fixed << setprecision(2) << -2 * pow(a, 2) + 4 * a - 9;
    return 0;
}