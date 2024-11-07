#include<bits/stdc++.h>
using namespace std;
int main()
{
    
    int n, m;
    cin >> n >> m;
    int a[n][m];
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            cin >> a[i][j];
    int max = a[0][0];
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            if(max < a[i][j])
                max = a[i][j];
    cout << max;
    return 0;
}