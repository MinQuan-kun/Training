using System;
namespace Dgcheo
{
    public class Program {
        static void Main() {
            int n = int.Parse(Console.ReadLine());
            int[,] a = new int[n, n];
            
            for (int i = 0; i < n; i++) {
                string[] row = Console.ReadLine().Split();
                for (int j = 0; j < n; j++) {
                    a[i, j] = int.Parse(row[j]);
                }
            }

            for (int i = 0; i < n; i++) {
                Console.Write(a[i, i] + " ");
            }
        }
    }
}