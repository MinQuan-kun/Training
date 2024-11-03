#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a[100];
    int n = 0;
    while(cin >> a[n])
        n++;
    for(int i = 0; i < n; i++)
        cout << a[i] << " ";
    return 0;
}