#include<bits/stdc++.h>
using namespace std;
int main()
{
    char a, b;
    cin >> a >> b;
    a = int(a);
    b = int(b);
    for(int i = a; i <= b; i++)
        cout << char(i - 32) << " ";
    return 0;
}