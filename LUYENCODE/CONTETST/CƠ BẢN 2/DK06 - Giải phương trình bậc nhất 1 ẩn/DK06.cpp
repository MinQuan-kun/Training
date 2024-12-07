#include<bits/stdc++.h>
using namespace std;
int main()
{
    float a ,b;
    cin >> a >> b;
    if(a == 0 && b != 0)
        cout << "NO";
    else if(a == 0 && b == 0)
        cout << "WOW";
    else if(b == 0 && a != 0)
        cout << fixed << setprecision(2) << a * 0;
    else
        cout << fixed << setprecision(2) << float(-b / a);
    return 0;
}