#include <bits/stdc++.h>
using namespace std;

float SumAm(float a[], int n) 
{
    float Tong = 0.0;
    for (int i = 0; i < n; i++) {
        cin >> a[i];
        if (a[i] < 0)
            Tong += a[i];
    }
    return Tong;
}

int main() {
    int n;
    cin >> n;
    if (n <= 0) {
        cout << -1;
        return 0;
    }
    float a[10];
    float tong = SumAm(a, n);
     cout <<(round(tong * 100))/100;
    return 0;
}
