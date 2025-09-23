#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> a(n);
    for (int &x : a) cin >> x;

    multiset<int> towers;

    for (int x : a) {
        auto it = towers.upper_bound(x);
        if (it != towers.end()) {
            towers.erase(it);
        }
        towers.insert(x);
    }

    cout << towers.size();
    return 0;
}
