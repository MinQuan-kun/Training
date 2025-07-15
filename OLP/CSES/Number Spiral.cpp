#include <bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    cin >> n;
    while (n--) {
        long long x, y;
        cin >> x >> y;
        long long layer = max(x, y);
        long long res;
        if (layer % 2 == 0) {
            if (x == layer) 
                res = layer * layer - y + 1;
            else 
                res = (layer - 1) * (layer - 1) + x;
        } else {
            if (y == layer) 
                res = layer * layer - x + 1;
            else 
                res = (layer - 1) * (layer - 1) + y;
        }
        cout << res << endl;
    }
    return 0;
}
