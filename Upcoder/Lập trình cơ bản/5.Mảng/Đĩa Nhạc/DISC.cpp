#include<bits/stdc++.h>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;

    vector<int> disks(n);
    for (int i = 0; i < n; i++) {
        disks[i] = i + 1;  
    }

    for (int i = 0; i < m; i++) {
        int x;
        cin >> x;
        
        auto it = find(disks.begin(), disks.end(), x);
        // Di chuyển đĩa x lên trên cùng
        disks.erase(it);  // Xóa đĩa x ra khỏi mảng
        disks.insert(disks.begin(), x);  // Đặt đĩa x vào vị trí đầu tiên
    }

    // In ra thứ tự các đĩa nhạc
    for (int i = 0; i < n; i++) {
        cout << disks[i] << " ";
    }

    return 0;
}
