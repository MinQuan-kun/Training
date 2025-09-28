#include <bits/stdc++.h>
using namespace std;

int n;
int a[105][105];
string bestPath = "";
int dx[] = {1, 0};
int dy[] = {0, 1};

void Try(int x, int y, string path) {
    if (a[x][y] == -1) return;

    path.push_back(char(a[x][y] + '0'));

    if (x == n - 1 && y == n - 1) {
        if (bestPath == "" || path < bestPath) {
            bestPath = path;
        }
        return;
    }

    for (int k = 0; k < 2; k++) {
        int nx = x + dx[k];
        int ny = y + dy[k];
        if (nx < n && ny < n) {
            Try(nx, ny, path);
        }
    }
}

int main() {
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    cin >> n;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            cin >> a[i][j];

    if (a[0][0] == -1 || a[n-1][n-1] == -1) {
        cout << -1;
        return 0;
    }

    Try(0, 0, "");

    if (bestPath == "") {
        cout << -1;
    } else {
        long long res = 0;
        for (char c : bestPath) {
            res = res * 2 + (c - '0');
        }
        cout << res;
    }

    return 0;
}
