#include<bits/stdc++.h>
using namespace std;
int main()
{
    int x, n;
    cin >> x >> n;
    int tong = 0;
    for (int i = 1; i <= n; i++)
        tong += pow(x,i);
    cout << tong;
}