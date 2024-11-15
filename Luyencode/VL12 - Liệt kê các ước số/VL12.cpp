#include<bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;

    // Nếu n = 0, in "INF"
    if (n == 0) 
        cout << "INF" << endl;
    else {
        vector<int> res;
        
        // Tìm các ước nguyên dương của n
        for (int i = 1; i <= abs(n); i++) 
            if (n % i == 0)
                res.push_back(i);

        // Sắp xếp các ước theo thứ tự giảm dần
        sort(res.rbegin(), res.rend());

        // In các ước ra
        for (size_t i = 0; i < res.size(); i++) {
            cout << res[i];
            if (i != res.size() - 1) 
                cout << " ";  // In dấu cách giữa các số
        }
    }
    return 0;
}
