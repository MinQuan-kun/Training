using System;

namespace CheckSNT
{
    public class Program
    {
        public static void Main(string[] args)
        {
            long n;
            string input;
            while (!string.IsNullOrEmpty(input = Console.ReadLine()))
            {
                if (long.TryParse(input, out n))
                {
                    if (CheckSNT(n))
                        Console.WriteLine("Yes");
                    else
                        Console.WriteLine("No");
                }
                else
                {
                    Console.WriteLine();
                }
            }
        }

        public static bool CheckSNT(long n)
        {
            if (n < 2)
                return false;
            if (n == 2 || n == 3)
                return true;
            if (n % 2 == 0 || n % 3 == 0)
                return false;

            for (long i = 5; i * i <= n; i += 6)
            {
                if (n % i == 0 || n % (i + 2) == 0)
                    return false;
            }
            return true;
        }
    }
}
