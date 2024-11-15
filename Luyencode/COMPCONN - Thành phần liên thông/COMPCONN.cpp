#include <bits/stdc++.h>
using namespace std;

const int maxn = 1001;
int M, N, K;
bool visited[maxn][maxn];
int field[maxn][maxn];

// Các hướng di chuyển kề nhau (trái, phải, trên, dưới)
int dx[] = {-1, 1, 0, 0};
int dy[] = {0, 0, -1, 1};

// Hàm BFS để tìm kích thước hồ
int BFS(int x, int y) {
    queue<pair<int, int>> q;
    q.push({x, y});
    visited[x][y] = true;
    int size = 0;

    while (!q.empty()) {
        pair<int, int> cell = q.front();
        q.pop();
        size++;

        for (int i = 0; i < 4; i++) {
            int nx = cell.first + dx[i];
            int ny = cell.second + dy[i];

            if (nx >= 0 && nx < M && ny >= 0 && ny < N && !visited[nx][ny] && field[nx][ny] == 1) {
                visited[nx][ny] = true;
                q.push({nx, ny});
            }
        }
    }
    return size;
}

int main() {
    cin >> M >> N >> K;

    // Khởi tạo ma trận
    memset(field, 0, sizeof(field));
    memset(visited, false, sizeof(visited));

    // Nhập tọa độ các ô bị ngập
    for (int i = 0; i < K; i++) {
        int x, y;
        cin >> x >> y;
        field[x-1][y-1] = 1;  // Lưu ý là đầu vào có thể là chỉ số từ 1, ta cần chuyển về chỉ số mảng (0-indexed)
    }

    int maxLakeSize = 0;

    // Duyệt qua tất cả các ô trong cánh đồng
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            // Nếu ô chưa được thăm và là ô bị ngập, thì ta thực hiện BFS để tìm hồ
            if (field[i][j] == 1 && !visited[i][j]) {
                maxLakeSize = max(maxLakeSize, BFS(i, j));
            }
        }
    }

    cout << maxLakeSize;  // In ra kích thước hồ lớn nhất
    return 0;
}
