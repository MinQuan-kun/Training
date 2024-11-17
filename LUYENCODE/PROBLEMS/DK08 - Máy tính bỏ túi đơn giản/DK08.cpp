#include<bits/stdc++.h>
using namespace std;
int main()
{
    double a, b;
    char c;
    cin >> a >> c >> b;
    switch (c)
    {
    case '+': 
        cout << fixed << setprecision(2) << a + b;
        break;
    case '-': 
        cout << fixed << setprecision(2) << a - b;
        break;
    case '*': 
        cout << fixed << setprecision(2) << a * b;
        break;
    case '/':
        if( b == 0)
            cout <<"Math Error";
        else
            cout << fixed << setprecision(2) << a / b;
        break;
    default:
        return 0;
        break;
    }
    return 0;
}