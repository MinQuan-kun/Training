#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a, b;
    cin >> a >> b;
    for(int i = min(a, b); i <= max(a, b); i++)
    {
        if(i != max(a, b))
            cout << i << " ";
        else
            cout << i;
    }
    return 0;
}