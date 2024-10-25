using System;
namespace NGOISAO5
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            int space = 0;
            int sao = n * 2 - 1;
            for(int i = 0; i < n; i++)
            {
                for(int e = 0; e < space; e++)
                    Console.Write(" ");
                for(int j = 0; j < sao; j++)
                    Console.Write("*");
                for(int e = 0; e < space; e++)
                    Console.Write(" ");
                if(i != n - 1)
                    Console.WriteLine("");
                sao -= 2;
                space ++;
            }
        }
    }
}