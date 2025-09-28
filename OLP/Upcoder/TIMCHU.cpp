#include <bits/stdc++.h>
using namespace std;

int n, m, y, x;
char maTran[101][101];
bool visited[101][101];
int dx[] = {-1, 1, 0, 0};
int dy[] = {0, 0, -1, 1};
string yeucau;
bool found = false;

int lastx, lasty;

void Try(int x, int y, int pos) {
    if (pos == yeucau.length() - 1) {
        found = true;
        return;
    }

    visited[y][x] = true;

    for (int i = 0; i < 4; i++) {
        int newX = x + dx[i];
        int newY = y + dy[i];
        if (newX >= 0 && newX < m && newY >= 0 && newY < n &&
            !visited[newY][newX] &&
            maTran[newY][newX] == yeucau[pos + 1]) {
            Try(newX, newY, pos + 1);
            if (found)
            {
                if(pos < yeucau.length() - 2)
                    return;
                else
                    lastx = newX, lasty = newY;
            }
        }
    }

    visited[y][x] = false;
}

int main() {
    cin >> n >> m >> y >> x;
    cin >> yeucau;
    for (int i = 0; i < n; i++)
        for (int j = 0; j < m; j++)
            cin >> maTran[i][j];

    if (maTran[y][x] == yeucau[0]) {
        Try(x, y, 0);
    }

    if (found) 
    {
        cout << "YES\n";
        cout << "(" << lasty << "," << lastx << ")";
    }

    else cout << "NO\n";

    return 0;
}
