using System;
namespace Tinhtong
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.ReadLine().Split(' ');
            int x = int.Parse(input[0]);
            int n = int.Parse(input[1]);
            double tong = 0;
            for(int i = 1; i <= n; i++)
                tong += Math.Pow(x, i);
            Console.Write(tong);
        }
    }
}