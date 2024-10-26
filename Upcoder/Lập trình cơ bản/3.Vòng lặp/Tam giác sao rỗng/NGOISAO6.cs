using System;

namespace TAMGIACSAORONG
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int h = int.Parse(Console.ReadLine());
            
            // In tam giác cân sao rỗng
            for (int i = 0; i < h; ++i)
            {
                for (int j = 0; j < 2 * h - 1; ++j)
                {
                    if (i == h - 1 || i + j == h - 1 || j - i == h - 1)
                        Console.Write("*");
                    else
                        Console.Write(" ");
                }
                if (i < h - 1)
                    Console.WriteLine();
            }
        }
    }
}
