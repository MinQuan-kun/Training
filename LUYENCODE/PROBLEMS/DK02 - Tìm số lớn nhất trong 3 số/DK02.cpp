#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a ,b, c;
    cin >> a >> b >> c;
    cout << max(c, max(a, b));
    return 0;
}