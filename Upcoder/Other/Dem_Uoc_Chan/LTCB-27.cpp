#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int cnt = 0;
    for(int i = 2; i <= n; i++)
        if(i % 2 == 0 && n % i == 0)
            cnt++;
    cout << cnt;
}