#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    long long cnt = 0;
    long long plus = 0;
    long long a[n];
    for(long long i = 0; i < n; i++)
        cin >> a[i];
    for(long long i = 1; i < n; i++)
    {
        if(a[i] < a[i - 1])
        {
            plus = a[i - 1] - a[i];
            a[i] = a[i - 1];
            cnt += plus;
        }
    }
    cout << cnt;
}