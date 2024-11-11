#include<bits/stdc++.h>
using namespace std;

// Các hướng di chuyển (lên, xuống, trái, phải)
int dx[] = {-1, 1, 0, 0};
int dy[] = {0, 0, -1, 1};
// Kiểm tra nếu ô (x, y) nằm trong phạm vi của ma trận
bool isValid(int x, int y, int M, int N) {
    return x >= 0 && x < M && y >= 0 && y < N;
}

// Hàm thực hiện DFS để tìm và đánh dấu các ô đất trống liên tiếp
pair<int, bool> dfs(int x, int y, int M, int N, vector<string>& grid, vector<vector<bool>>& visited) {
    stack<pair<int, int>> s;
    s.push(pair<int, int>(x, y));  // Đẩy cặp vào stack
    int area = 0;
    bool borderTouch = false;
    while (!s.empty()) {
        pair<int, int> p = s.top();  // Lấy cặp ra khỏi stack
        s.pop();
        int cx = p.first;  // Xử lý phần tử đầu tiên của cặp
        int cy = p.second; // Xử lý phần tử thứ hai của cặp

        if (visited[cx][cy]) continue;
        visited[cx][cy] = true;
        area++;

        // Kiểm tra nếu ô hiện tại tiếp xúc với biên
        if (cx == 0 || cy == 0 || cx == M - 1 || cy == N - 1) {
            borderTouch = true;
        }

        // Duyệt các ô kề bên
        for (int i = 0; i < 4; ++i) {
            int nx = cx + dx[i], ny = cy + dy[i];
            if (isValid(nx, ny, M, N) && grid[nx][ny] == '0' && !visited[nx][ny]) {
                s.push(pair<int, int>(nx, ny));  // Đẩy cặp vào stack
            }
        }
    }

    return {area, borderTouch};
}

int main() {
    int M, N;
    cin >> M >> N;

    vector<string> grid(M);
    for (int i = 0; i < M; ++i) {
        cin >> grid[i];
    }

    vector<vector<bool>> visited(M, vector<bool>(N, false));
    int totalArea = 0;

    // Duyệt qua tất cả các ô trong ma trận
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            if (grid[i][j] == '0' && !visited[i][j]) {
                pair<int, bool> result = dfs(i, j, M, N, grid, visited);
                int area = result.first;
                bool borderTouch = result.second;
                
                // Nếu vùng đất không tiếp xúc với biên, cộng diện tích của vùng này
                if (!borderTouch) {
                    totalArea += area;
                }
            }
        }
    }

    // In diện tích cần tìm
    cout << totalArea;
    return 0;
}