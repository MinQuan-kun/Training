#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;

    int a[n][m];
    int index = 1;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            a[i][j] = index;
            index++;
        }
    }

    int top = 0, bottom = n - 1, left = 0, right = m - 1;
    int result[n][m];
    int count = 0;

    while (top <= bottom && left <= right) {
        // Duyệt từ trái sang phải trên hàng top
        for (int i = left; i <= right; i++) {
            result[top][i] = a[count / m][count % m];
            count++;
        }
        top++;

        // Duyệt từ trên xuống dưới ở cột right
        for (int i = top; i <= bottom; i++) {
            result[i][right] = a[count / m][count % m];
            count++;
        }
        right--;

        // Duyệt từ phải sang trái trên hàng bottom
        if (top <= bottom) {
            for (int i = right; i >= left; i--) {
                result[bottom][i] = a[count / m][count % m];
                count++;
            }
            bottom--;
        }

        // Duyệt từ dưới lên trên ở cột left
        if (left <= right) {
            for (int i = bottom; i >= top; i--) {
                result[i][left] = a[count / m][count % m];
                count++;
            }
            left++;
        }
    }

    // In ma trận xoắn ốc
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
