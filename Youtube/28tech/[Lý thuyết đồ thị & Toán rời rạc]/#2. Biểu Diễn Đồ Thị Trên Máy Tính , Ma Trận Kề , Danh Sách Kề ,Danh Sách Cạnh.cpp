// Bài 1. Dòng đầu tiên chứ 2 số n, m là số đỉnh và số cạnh của đồ thị.
// M là dòng tiếp theo mỗi dòng là 2 u, v biểu diễn cạnh u, v của đồ thị 
// Các cạnh được liệt kê theo thứu tự tăng dần của các đỉnh đầu 
// Output
// In ra ma trận kề tương ứng của đồ thị 
Ví dụ 
input                        
5 9
1 2
1 3
1 4
2 3
2 4
2 5
3 4
3 5
4 5
output
0 1 1 1 0
1 0 1 1 1
1 1 0 1 1
1 1 1 0 1
0 1 1 1 0
               
#include <bits/stdc++.h>
using namespace std;
int n, m;
int a[1001][10001];
int main()
{
    cin >> n >> m;
    for (int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        a[x][y] = a[y][x] = 1;
    }
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <n; j++)
            cout << a[i][j] << " ";
        cout << endl;
    }
    return 0;
}

// Bài 2. In ra danh sách kề của đỉnh 

#include <bits/stdc++.h>
using namespace std;
int n, m;
// int a[1001][10001];
vector<int> adj[100]
int main()
{
    cin >> n >> m;
    for (int i = 0; i < m; i++)
    {
        int x, y;
        cin >> x >> y;
        adj[x].push_back(y);
        adj[y].push_back(x);
    }
    for(int i = 1; i <= n; i++)
    {
        cout << i << ":";
        for(int x : adj[i] )
            cout << x << " "
        cout << endl;
    }
    return 0;
}

// Bài 3 Ma trận kề sang danh sách cạnh

#include <bits/stdc++.h>
using namespace std;
int n, m;
int a[1001][10001];
// vector<int> adj[1001];
vector<pair<int, int>> edge;
int main()
{
    cin >> n;
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
        {
            cin >> a[i][j];
        }
    }
        
    for (int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
        {
            if(a[i][j] == 1 && i < j)
                edge.push_back({i, j});
        }
    }
    for(auto it : edge)
    {
        cout << it.first << " " << it.second << endl;
    }
    return 0;
}

// Bài 4 Ma trận kề sang danh sách kề

#include <bits/stdc++.h>
using namespace std;
int n, m;
int a[1001][10001];
vector<int> adj[1001];
vector<pair<int, int>> edge;
int main()
{
    cin >> n;
    for(int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
        {
            cin >> a[i][j];
        }
    }
        
    for (int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
        {
            if(a[i][j] == 1 )
                adj[i].push_back(j);
                //adj(j).push_back(i)
        }
    }
    for(int i = 1; i < n; i++)
    {
        cout << i << ": ";
        for(int x: adj[i])
            cout << x << " ";
        cout << endl;
    }
    
    return 0;
}

// Bài 5. Cho danh sách kề in ra ma trận tương ứng 
input:
5
2 3 4
1 3 4 5
1 2 4 5
1 2 3 5
2 3 4

#include <bits/stdc++.h>
using namespace std;
int n, m;
int a[1001][10001];
vector<int> adj[1001];
vector<pair<int, int>> edge;
int main()
{
    cin >> n;
    cin.ignore();

    for(int i = 1; i <= n; i++)
    {
        string s, num;
        getline(cin, s);
        stringstream ss(s);
        while(ss >> num)
        {
            a[i][stoi(num)] = 1;
        }
    } 
    for (int i = 1; i <= n; i++)
    {
        for(int j = 1; j <= n; j++)
            cout << a[i][j] << " ";
        cout << endl;
    }
    return 0;
}

// Bài 6. Danh sách kề sang danh sách cạnh
input:                    
5
2 3 4
1 3 4 5
1 2 4 5
1 2 3 5
2 3 4

#include <bits/stdc++.h>
using namespace std;
int n, m;
int a[1001][10001];
vector<int> adj[1001];
vector<pair<int, int>> edge;
int main()
{
    cin >> n;
    cin.ignore();

    for(int i = 1; i <= n; i++)
    {
        string s, num;
        getline(cin, s);
        stringstream ss(s);
        while(ss >> num)
        {
            if(stoi(num) > i)
            edge.push_back({i, stoi(num)});
        }
    } 
    for(auto it : edge)
        cout << it.first << " " << it.second << endl;
    return 0;
}