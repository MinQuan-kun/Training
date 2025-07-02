#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    vector<bool> a(n + 1, false);
    
    long long temp[n];
    for(long long i = 1; i < n; i++)
    {
        cin >> temp[i];
        a[temp[i]] = true;
    }
    for(long long i = 1; i <= n; i++)
        if(a[i] == false)
            cout << i;
    return 0;
}