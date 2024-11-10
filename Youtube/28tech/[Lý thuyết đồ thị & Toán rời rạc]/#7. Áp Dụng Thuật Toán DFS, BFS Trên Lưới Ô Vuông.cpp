//Đếm số thành phần liên thông 
#include<bits/stdc++.h>
using namespace std;

int n, m;
char a[1001][1001]; // int a[1001][1001]

int dx[4] = {-1, 0, 0, 1};
int dy[4] = {0, -1, 1, 0};
// bool visited[1001][1001];
void DFS(int i, int j)
{
    cout << i << " " << j << endl;
    //visited[i][j] = true;
    a[i][j] = 'o';
    //Duyệt các đỉnh kề 
    for(int k = 0; k < 4; k++)
    {
        int i1 = i + dx[k];
        int j1 = j + dy[k];
        if(i1 >= 1 && i1 <= n && j1 >= 1 && j1 <= m && a[i1][j1] == 'x')
        {
            DFS(i1, j1);
        }
    }
}
void BFS(int i, int j)
{
    queue<pair<int, int >> q;
    q.push({i , j});
    a[i][j] = 'o';
    cout << i << " " << j << endl;
    while(!q.empty())
    {
        pair<int,int> top = q.front();
        q.pop();
        //Duyệt các đỉnh kề 
        for(int k = 0; k < 4; k++)
        {
            int i1 = top.first + dx[k];
            int j1 = top.second + dy[k];
            if(i1 >= 1 && i1 <= n && j1 >= 1 && j1 <= m && a[i1][j1] == 'x')
            {
                cout << i1 << " " << j1 << endl;
                q.push({i1, j1});
                a[i1][j1] = 'o';
            }
        }
    }
}
void input()
{
    cin >> n >> m;
    for(int i = 1; i <= n; i++)
        for(int j = 1; j <= m; j++)
            cin >> a[i][j];
    // memset(visited, false, sizeof(visited));
    int cnt = 0;
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
        {
            if(a[i][j] == 'x')
            {
                cout << "Thành phần liên thông thứ: " << cnt + 1 << endl; 
                BFS(i, j);
                //DFS(i, j);
                cnt++;
            }
        }
    }
    cout <<"Có tất cả: " <<  cnt << " thành phần liên thông!" << endl;
}
int main()
{  
    input();
    return 0;
}
// input
// 6 6
// xxxooo
// ooxooo
// oxxxxo
// ooooox
// xxoxox
// xoxxox
// output
// Thành phần liên thông thứ: 1
// 1 1
// 1 2
// 1 3
// 2 3
// 3 3
// 3 2
// 3 4
// 3 5
// Thành phần liên thông thứ: 2
// 4 6
// 5 6
// 6 6
// Thành phần liên thông thứ: 3
// 5 1
// 5 2
// 6 1
// Thành phần liên thông thứ: 4
// 5 4
// 6 4
// 6 3
// Có tất cả: 4 thành phần liên thông!