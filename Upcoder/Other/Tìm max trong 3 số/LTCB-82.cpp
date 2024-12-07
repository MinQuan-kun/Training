#include<bits/stdc++.h>
using namespace std;
int main()
{
    float a , b , c;
    cin >> a >> b >> c;
    cout << max(max(a, b), c);
    return 0;
}