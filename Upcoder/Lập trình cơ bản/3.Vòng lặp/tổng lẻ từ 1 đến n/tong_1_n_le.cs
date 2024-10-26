using System;

namespace Tongle
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            int s = 0;

            for (int i = 1; i <= n; i++)
            {
                if (i % 2 != 0)
                    s += i;
            }
            Console.Write(s);
        }
    }
}
