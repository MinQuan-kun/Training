#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    double res = n / 3.0;
    if(res > int(res))
        res += 1;
    cout << "Quy " << int(res);
    return 0;
}