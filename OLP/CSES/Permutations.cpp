#include<bits/stdc++.h>
using namespace std;
int main()
{
    long long n;
    cin >> n;
    if(n <= 3 && n != 1)
        cout << "NO SOLUTION";
    else
    {
        for(int i = 2; i <= n; i += 2)
            cout << i << " ";
        for(int  j = 1; j <= n; j += 2)
            cout << j << " ";
    }
    return 0;
}