using System;

namespace Program
{
    class MainClass
    {
        public static void Main(string[] args)
        {
            string[]input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);

            int s1 = 0;
            int s2 = 0;

            for (int i = 1; i < n; i++)
            {
                if (n % i == 0)
                {
                    s1 += i;
                }
            }

            for (int i = 1; i < m; i++)
            {
                if (m % i == 0)
                {
                    s2 += i;
                }
            }

            if (s1 == m && s2 == n)
            {
                Console.Write("YES");
            }
            else
            {
                Console.Write("NO");
            }
        }
    }
}
