using System;

namespace Mang2c
{
    public class Program
    {
        static void Main(string[] args)
        {
            // Đọc n và m từ đầu vào
            string[] input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            
            int[,] a = new int[n, m];
            
            for (int i = 0; i < n; i++)
            {
                string[] row = Console.ReadLine().Split(' ');
                for (int j = 0; j < m; j++)
                {
                    a[i, j] = int.Parse(row[j]);
                }
            }
            
            int max = a[0, 0];
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    if (max < a[i, j])
                        max = a[i, j];
                }
            }
            
            Console.Write(max);
        }
    }
}
