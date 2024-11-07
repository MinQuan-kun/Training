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
            int temp = 1;
            // Nhập các phần tử của mảng
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < m; j++)
                {
                    a[i, j] = temp;
                    temp ++;
                }
            }

            int c = 1;
            for (int i = 0; i < n; i++)
            {
                if (c % 2 != 0) 
                {
                    for (int j = 0; j < m; j++)
                        Console.Write("{0} ", a[i, j]);
                }
                else 
                {
                    for (int j = m - 1; j >= 0; j--)
                        Console.Write("{0} ", a[i, j]);
                }
                c++;
                Console.WriteLine();
            }
        }
    }
}
