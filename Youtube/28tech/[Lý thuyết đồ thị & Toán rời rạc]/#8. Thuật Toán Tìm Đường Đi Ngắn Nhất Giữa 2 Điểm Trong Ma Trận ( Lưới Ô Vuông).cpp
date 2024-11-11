//Kiểm tra đường đi giữa 2 điểm trên lưới
#include<bits/stdc++.h>
using namespace std;
int n, m, s, t, u, v;
char a[1001][1001];//int a[1001][1001];
int dx[4] = {-1, 0, 0, 1};
int dy[4] = {0, 1, -1 ,0};
int d[1001][1001]; // d[i][j] : Lưu số bước đi từ bắt đầu tới i, j
bool visited[1001][1001];

bool DFS(int i, int j)
{
    cout << i << " " << j << endl;
    if(a[i][j] == 'B')
        return true;
    a[i][j] = 'x'; //visited[i][j] = true
    for(int k = 0; k < 4; k++)
    {
        int i1 = i + dx[k];
        int j1 = j + dy[k];
        if(i1 <= n && i1 >= 1 && j1 <= m && j1 >= 1 && a[i1][j1] != 'x')
            if(DFS(i1, j1))
                return true;
    }
    return false;
}
void BFS(int i, int j)
{
    queue<pair<int , int>> q;
    q.push({i, j});
    // cout << i << " " << j << endl;
    a[i][j] = 'x'; //visited[i][j] = true
    d[i][j] = 0;
    while(!q.empty())
    {
        pair<int, int> top = q.front();
        q.pop();
        for(int k = 0; k < 4; k++)
        {
            int i1 = top.first + dx[k];
            int j1 = top.second + dy[k];
            if(i1 <= n && i1 >= 1 && j1 <= m & j1 >= 1 && a[i1][j1] != 'x')
            {
                // cout << i1 << " " << j1 << endl;
                d[i1][j1] = d[top.first][top.second] + 1;
                if(a[i1][j1] == 'B')
                  return;
                q.push({i1, j1});
                a[i1][j1] = 'x';
            }
        }
    }
}
void input()
{
    cin >> n >> m;
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= m; j++)
        {
            cin >> a[i][j];
            if(a[i][j] == 'A') // Vị trí đầu tiên 
            {
                s = i;
                t = j;
            }
            else if(a[i][j] == 'B') // Vị trí thứ 2
            {
                u = i; 
                v = j;
            }
        }
    }
    //if(BFS(s, t))
    // if(DFS(s, t))
    BFS(s, t);
    if(!d[u][v])
        cout << "Không có đường đi" << endl;
    else
        cout << d[u][v] << endl;
}
int main()
{
    input();
}
// input
//
// 6 6
// Aooxoo
// oxoooo
// oxoooo
// ooooxx
// Boooxo
// oooxxx