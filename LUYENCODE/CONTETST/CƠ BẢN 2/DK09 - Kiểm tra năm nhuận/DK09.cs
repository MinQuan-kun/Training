using System;

namespace DK09
{
    public class Program
    {
        static void Main(string[] args)
        {
           int n = int.Parse(Console.ReadLine());
           if(n > 0 && n < 100000)
            {
                if((n % 4 == 0 || n % 400 == 0) && n % 100 != 0)
                    Console.Write("YES");
                else
                    Console.Write("NO");
            }
            else
                Console.Write("INVALID");
        }
    }
}
