#include <bits/stdc++.h>
using namespace std;

int n;
int a[105][105];
string bestPath = "";
int dx[] = {1, 0};
int dy[] = {0, 1};

void Try(int x, int y, string path) {
    path.push_back(char(a[x][y] + '0'));

    if (bestPath.size() >= path.size()) {
        if (path < bestPath.substr(0, path.size())) return;
    }

    if (x == n - 1 && y == n - 1) {
        if (path.size() > bestPath.size() || 
           (path.size() == bestPath.size() && path > bestPath)) {
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


    cin >> n;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            cin >> a[i][j];

    Try(0, 0, "");

    long long res = 0;
    for (char c : bestPath) {
        res = res * 2 + (c - '0');
    }

    cout << res << "\n";
    return 0;
}
