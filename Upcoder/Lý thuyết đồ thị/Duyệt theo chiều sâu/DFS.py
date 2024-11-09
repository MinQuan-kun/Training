nV, nE, S = map(int, input().split())
adj = [[] for _ in range(nV + 1)]  # Danh sách kề với kích thước nV + 1
visited = [False] * (nV + 1)       # Mảng visited với kích thước nV + 1

def input_graph():
    for _ in range(nE):
        x, y = map(int, input().split())
        adj[x].append(y)
        adj[y].append(x)

def dfs(s):
    print(s, end=" ")
    visited[s] = True
    for v in adj[s]:
        if not visited[v]:
            dfs(v)

input_graph()
dfs(S)
