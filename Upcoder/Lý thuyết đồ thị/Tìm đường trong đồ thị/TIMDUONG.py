from collections import deque

nE, nV, S, T = 0, 0, 0, 0
adj = []
visited = []
dist = []

def input_data():
    global nE, nV, S, T, adj, visited, dist
    nE, nV, S, T = map(int, input().split())
    
    adj = [[] for _ in range(nV + 1)]
    visited = [False] * (nV + 1)
    dist = [-1] * (nV + 1)
    
    for _ in range(nV):
        x, y = map(int, input().split())
        adj[x].append(y)
        adj[y].append(x)

def BFS(S, T):
    queue = deque([S])
    visited[S] = True
    dist[S] = 0

    while queue:
        v = queue.popleft()
        for x in adj[v]:
            if not visited[x]:
                queue.append(x)
                visited[x] = True
                dist[x] = dist[v] + 1
                if x == T:
                    return dist[x]
    return -1  # Trả về -1 nếu không tìm được đường đi từ S đến T

input_data()
print(BFS(S, T), end="")
