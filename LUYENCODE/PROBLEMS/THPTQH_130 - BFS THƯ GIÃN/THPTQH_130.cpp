#include<bits/stdc++.h>
using namespace std;
const maxn = 1001
int nE, nV, S, T;
vector<int> adj[maxn];
int dis[maxn]; // mảng lưu khoảng cách từ điểm bắt đầu
int parent[maxn]; // mảng lưu cha để truy vết đường đi

int BFS(int start, int end) {
    queue<int> q;
    fill(dist, dist + MAX, -1); // Khởi tạo khoảng cách là -1 (chưa thăm)
    q.push(start);
    dist[start] = 0;

    while (!q.empty()) {
        int u = q.front();
        q.pop();

        for (int v : adj[u]) {
            if (dist[v] == -1) { // Nếu đỉnh chưa được thăm
                dist[v] = dist[u] + 1;
                parent[v] = u;   // Lưu cha của v
                if (v == end) {
                    return dist[v]; // Trả về độ dài đường đi ngắn nhất
                }
                q.push(v);
            }
        }
    }

    return -1; // Không tìm thấy đường đi
}

int main() {
    ifstream fin("BFS.INP");
    ofstream fout("BFS.OUT");

    if (!fin || !fout) {
        cerr << "Không thể mở file!" << endl;
        return 1;
    }

    int n, m, start, end;
    fin >> n >> m >> start >> end;

    for (int i = 0; i < m; i++) {
        int u, v;
        fin >> u >> v;
        adj[u].push_back(v);
        adj[v].push_back(u);
    }

    int result = BFS(start, end);
    fout << result << endl;

    fin.close();
    fout.close();
    return 0;
}