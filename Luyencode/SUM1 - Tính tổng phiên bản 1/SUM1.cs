using System;
namespace Tinhtong
{
    public class Program
    {
        static void Main(string[]args)
        {
            long n = long.Parse(Console.ReadLine());
            long s = 0;
            for(long i = 1; i <= n; i++)
                s += i;
            Console.Write(s);
        }
    }
}