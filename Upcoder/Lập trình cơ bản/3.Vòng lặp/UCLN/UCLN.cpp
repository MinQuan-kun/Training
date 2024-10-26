#include<bits/stdc++.h>
using namespace std;
int main()
{
    int a, b, c;
    cin >> a >> b;
    for (int i = 1; i <= max(a, b); i++)
        if (a % i == 0 && b % i == 0)
            c = i;
    cout << c;
    return 0;
}