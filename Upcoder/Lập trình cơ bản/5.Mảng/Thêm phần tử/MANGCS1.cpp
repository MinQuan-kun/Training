#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a[100];
    int x, k;
    cin >> x >> k;
    int n = 0;
    while(cin >> a[n])
        n++;
    for(int i = 0; i < n; i++)
    {
        if(i == x)
            cout << k << " " << a[i] << " ";
        else
            cout << a[i] << " ";
    }
    if(x == n)
        cout<<k;
    return 0;
}