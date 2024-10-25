using System;

namespace BOHAI
{
    public class Program
    {
        static void Main(string[] args)
        {
            string []input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            int s = 1;
            int t = 0;

            while (n > 0)
            {
                s *= n % 10;
                n /= 10;
            }

            for (int i = m; i > 0; i--)
            {
                if (m % i == 0)
                {
                    t += i;
                }
            }

            if (t == s)
            {
                Console.WriteLine("YES");
            }
            else
            {
                Console.WriteLine("NO");
            }
        }
    }
}
