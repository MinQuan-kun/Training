#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    for(int i = 1; i <= n; i++)
        if(i % 2 != 0 && i != 5 && i != 7 && i != 93)
            cout << i << " ";
    return 0;
}