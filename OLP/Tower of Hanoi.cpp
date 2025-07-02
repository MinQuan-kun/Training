#include<bits/stdc++.h>
using namespace std;
void towerofHanoi(int n, int A, int B, int C)
{
    if(n == 0)
        return;
    towerofHanoi(n - 1, A, C, B);
    cout << A << ' ' << B << endl;
    towerofHanoi(n - 1, C, B, A);
}


int main()
{
    long long n;
    cin >> n;
    cout << (1 << n) - 1 << '\n';
    towerofHanoi(n, 1, 3, 2);
    return 0;
}