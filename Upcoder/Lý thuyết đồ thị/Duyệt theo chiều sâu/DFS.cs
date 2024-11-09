using System;
using System.Collections.Generic;

namespace DFS
{
    public class Program
    {
        static int nV, nE, S;
        static List<int>[] adj;
        static bool[] visited;

        static void Input()
        {
            string[] firstLine = Console.ReadLine().Split(' ');
            nV = int.Parse(firstLine[0]);
            nE = int.Parse(firstLine[1]);
            S = int.Parse(firstLine[2]);

            adj = new List<int>[nV + 1];
            for (int i = 1; i <= nV; i++)
            {
                adj[i] = new List<int>();
            }

            for (int i = 0; i < nE; i++)
            {
                string[] edge = Console.ReadLine().Split(' ');
                int x = int.Parse(edge[0]);
                int y = int.Parse(edge[1]);
                adj[x].Add(y);
                adj[y].Add(x);
            }

            visited = new bool[nV + 1];
        }

        static void DFS(int s)
        {
            Console.Write(s + " ");
            visited[s] = true;
            foreach (int v in adj[s])
            {
                if (!visited[v])
                    DFS(v);
            }
        }

        public static void Main(string[] args)
        {
            Input();
            DFS(S);
        }
    }
}