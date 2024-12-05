#include <bits/stdc++.h>
using namespace std;

void SNT(long long b, bool arr[]) {
    arr[0] = arr[1] = false; 
    for (long long i = 2; i * i <= b; ++i) 
        if (arr[i]) 
            for (long long j = i * i; j <= b; j += i) 
                arr[j] = false;
}

int main() {
    long long a, b;
    cin >> a >> b;
    long long size = sqrt(b);
    bool arr[size + 1]; 
    fill(arr, arr + size + 1, true); 
    SNT(size, arr);

    bool Res[b - a + 1];
    fill(Res, Res + (b - a + 1), true); 
    
    for (long long i = 2; i <= size; ++i) {
        if (arr[i]) {  
            long long start = max(i * i, (a + i - 1) / i * i);
            for (long long j = start; j <= b; j += i) 
                Res[j - a] = false;
        }
    }

    long long count = 0;
    for (long long i = 0; i <= b - a; ++i) 
        if (Res[i]) 
            count++;
    cout << count;
    return 0;
}
