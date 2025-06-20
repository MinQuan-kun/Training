#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> a(n);
    for (int &x : a) cin >> x;

    vector<int> lis; // sẽ lưu dãy tăng tạm thời

    for (int x : a) {
        auto it = lower_bound(lis.begin(), lis.end(), x);
        if (it == lis.end()) {
            lis.push_back(x);
        } else {
            *it = x;
        }
    }

    cout << lis.size() << endl;
    return 0;
}
