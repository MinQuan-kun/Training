using System;
namespace Timuoc
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            int res = 0;
            for(int i = 1; i <= n; i++)
                if(n % i == 0)
                    res++;
            Console.Write(res);
        }
    }
}