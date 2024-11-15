#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    if(n < 0)
        cout << "NO";
    else
    {
        long long temp = (long long)sqrt(n);
        if(temp * temp == n)
            cout << "YES";
        else
            cout << "NO";
    }
    return 0;
}