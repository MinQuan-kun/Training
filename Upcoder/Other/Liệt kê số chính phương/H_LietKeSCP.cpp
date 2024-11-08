#include<bits/stdc++.h>
using namespace std;
bool SCP(int n)
{
    int x = sqrt(n);
    if(x * x == n)
        return true;
    return false;
}
int main()
{
    int n, m;
    cin >> n >> m;
    for(int i = n; i <= m; i++)
    {
        if(SCP(i))
            cout << i << endl;
    }
    return 0;
}