#include <bits/stdc++.h>
using namespace std;

int main() 
{
    int n;
    cin >> n;

    if (n <= 0)
        cout << -1;
    else {
        int sum = 0;
        for (int i = 1; i <= n; i++)
            sum += i;
        cout << sum;
    }
    return 0;
}
