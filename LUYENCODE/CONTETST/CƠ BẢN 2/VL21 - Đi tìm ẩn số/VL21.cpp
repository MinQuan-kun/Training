#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long long x = 1, s= 0;
    
    for(long long i = 1; i <= n; i++)
    {
        tong += i;
        if(tong == n)
        {
            cout << i;
            break;
        }
    }
}