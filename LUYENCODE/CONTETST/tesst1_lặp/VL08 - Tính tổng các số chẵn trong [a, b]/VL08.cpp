#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a , b;
    int res = 0;
    cin >> a >> b;
    for(int i = a; i <= b; i++)
        if(i % 2 == 0)
            res += i;
    cout << res;
    return 0;
}