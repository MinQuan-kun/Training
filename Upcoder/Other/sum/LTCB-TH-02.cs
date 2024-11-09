using System;
namespace Sum
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            int tong = 0;
            int temp = 0;
            for (int i = 1; i <= n; i++)
            {
                temp = temp * 10 + 1;
                tong += temp;
            }
            
            Console.Write(tong);
        }
    }
}