using System;

namespace TAMGIACSAO
{
    public class Program
    {
        public static void Main(string[] args)
        {
            long n = long.Parse(Console.ReadLine());
            long k = n;

            for (long i = 1; i <= n; i++)
            {
                k -= i;
                if (k <= 0)
                    break;
            }

            if (k == 0)
                Console.Write("YES");
            else
                Console.Write("NO");
        }
    }
}
