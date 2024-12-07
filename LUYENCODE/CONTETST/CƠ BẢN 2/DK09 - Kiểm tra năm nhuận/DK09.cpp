#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    if(n > 0 && n < 100000)
    {
        if((n % 4 == 0 || n % 400 == 0) && n % 100 != 0)
            cout << "YES";
        else
            cout << "NO";
    }
    else
        cout << "INVALID";
    return 0;
}