#include<bits/stdc++.h>
using namespace std;
int main()
{
    float a, b;
    cin >> a >> b;
    if(a == 0)
    {
        if(b != 0)
            cout << 0;
        else
            cout << 1;
    }
    else
        cout << - b / a;
    return 0;
}