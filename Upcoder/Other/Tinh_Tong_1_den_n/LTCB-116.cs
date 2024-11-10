using System;
namespace Tong
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            if(n <= 0)
                Console.Write("-1");
            else
            {
                int tong = 0;
                for(int i = 1; i <= n; i++)
                    tong += i;
                Console.Write(tong);
            }
        }
    }
}