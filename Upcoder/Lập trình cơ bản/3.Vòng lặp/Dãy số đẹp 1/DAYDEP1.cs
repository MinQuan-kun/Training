using System;

namespace SODEP1
{
    publoc class Program
    {
        static void Main(string[] args)
        {
            int s = 0;
            int x;

            while (int.TryParse(Console.ReadLine(), out x))
            {
                s += x;
                if (x == 0)
                    break;
            }

            if (s % 10 == 0)
            {
                Console.WriteLine("DEP");
            }
            else if (s % 10 == 5)
            {
                Console.WriteLine("TRUNGBINH");
            }
            else
            {
                Console.WriteLine("XAU");
            }
        }
    }
}
