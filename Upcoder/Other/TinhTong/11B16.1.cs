using System;
namespace Tong
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            string []input = Console.ReadLine().Split(' ');
            int [] a = new int[n];
            int tong = 0;
            for(int i = 0; i < n; i++)
            {
                a[i] = int.Parse(input[i]);
                tong += a[i];
            }
            Console.Write(tong);
        }
    }
}