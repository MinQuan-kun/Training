#include <bits/stdc++.h>
using namespace std;

int main() {
    int n;
    cin >> n;
    vector<vector<int>> grid(n, vector<int>(n));
    // Đọc ma trận
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cin >> grid[i][j];
        }
    }
    // Bảng DP để lưu giá trị lớn nhất tại mỗi ô
    vector<vector<long long>> dp(n, vector<long long>(n, 0));
    // Khởi tạo điểm bắt đầu
    dp[0][0] = grid[0][0];
    // Điền giá trị cho hàng đầu tiên
    for (int j = 1; j < n; j++) {
        dp[0][j] = (dp[0][j-1] << 1) + grid[0][j];
    }
    // Điền giá trị cho cột đầu tiên
    for (int i = 1; i < n; i++) {
        dp[i][0] = (dp[i-1][0] << 1) + grid[i][0];
    }
    // Tính toán giá trị lớn nhất cho các ô còn lại
    for (int i = 1; i < n; i++) {
        for (int j = 1; j < n; j++) {
            dp[i][j] = max(dp[i-1][j], dp[i][j-1]) << 1;
            dp[i][j] += grid[i][j];
        }
    }
    // Kết quả là giá trị tại ô cuối cùng
    cout << dp[n-1][n-1];

    return 0;
}
