// Chưa tối ưu, còn 2 test case bị TLE
#include <bits/stdc++.h>
using namespace std;

int n;
int matran[101][101]; // Kích thước tối đa là 100x100
int dx[2] = {0, 1}; // Đi sang phải hoặc xuống dưới
int dy[2] = {1, 0};

// Hàm input để nhập giá trị của ma trận
void input() {
    cin >> n;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            cin >> matran[i][j];
}

// Hàm BFS để tìm đường đi có giá trị thập phân nhỏ nhất
int BFS() {
    queue<pair<int, string>> q; // Queue lưu cặp (vị trí ô, chuỗi nhị phân tạo thành đến ô đó)
    q.push({0, to_string(matran[0][0])}); // Bắt đầu từ ô đầu tiên với giá trị nhị phân ban đầu
    string res = ""; // Biến lưu chuỗi nhị phân có giá trị nhỏ nhất
    while (!q.empty()) {
        pair<int, string> front = q.front(); // Lấy phần tử đầu hàng đợi
        q.pop();

        int pos = front.first; // Vị trí ô hiện tại
        string temp = front.second; // Chuỗi nhị phân hiện tại
        int x = pos / n;
        int y = pos % n;

        // Nếu đến ô góc dưới bên phải, cập nhật min_binary nếu cần thiết
        if (x == n - 1 && y == n - 1) {
            if (res.empty() || temp < res) {
                res = temp;
            }
            continue;
        }

        // Kiểm tra và di chuyển đến các ô bên phải và phía dưới
        for (int k = 0; k < 2; k++) {
            int nx = x + dx[k];
            int ny = y + dy[k];

            // Kiểm tra giới hạn và điều kiện ô chưa được thăm
            if (nx >= 0 && nx < n && ny >= 0 && ny < n && matran[nx][ny] != -1) {
                q.push({nx * n + ny, temp + to_string(matran[nx][ny])});
            }
        }
    }

    // Chuyển chuỗi nhị phân tối ưu thành số thập phân
    return res.empty() ? -1 : stoi(res, nullptr, 2);
}

int main() {
    input();
    int result = BFS();
    cout << result;
    return 0;
}