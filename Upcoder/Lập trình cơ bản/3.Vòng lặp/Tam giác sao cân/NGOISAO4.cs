using System;
namespace NGOISAO4
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            int space = n - 1;
            int sao = 1;
            for(int i = 0 ; i < n; i++)
            {
                for(int j = 0; j < space; j++)
                    Console.Write(" ");
                for(int e = 0; e < sao; e++)
                    Console.Write("*");
                for(int j = 0; j < space; j++)
                    Console.Write(" ");
                if(sao != n * 2 - 1)
                    Console.WriteLine("");
                space --;
                sao += 2;
            }
        }
    }
}