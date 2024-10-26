using System;

namespace UCLN
{
    public class Program
    {
        public static long UCLN(long  a, long  b)
        {
            if (b == 0)
                return a;
            return UCLN(b, a % b);
        }

        public static void Main(string[] args)
        {
            string []input = Console.ReadLine().Split(' ');
            long a = long.Parse(input[0]);
            long b = long.Parse(input[1]);
            Console.Write(UCLN(a, b));
        }
    }
}
