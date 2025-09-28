#include<bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cin >> n;
    int a[n+1][n+1];
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= i; j++)
            cin >> a[i][j];
    
    int dp[n+1][n+1];
    memset(dp, 0, sizeof(dp));
    dp[1][1] = a[1][1];

    return 0;
}