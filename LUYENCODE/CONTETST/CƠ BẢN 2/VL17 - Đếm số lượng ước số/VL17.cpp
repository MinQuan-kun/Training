#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    n = abs(n);
    int tong = 0;
    for(int i = 1; i <= n; i++)
        if(n % i == 0)
            tong++;
    cout << tong;
    return 0;
}