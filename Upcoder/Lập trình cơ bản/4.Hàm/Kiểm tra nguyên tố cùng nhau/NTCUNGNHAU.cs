using System;
namespace UCLN
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.Readline().Split(' ');
            int a = int.Parse(input[0]);
            int b = int.Parse(input[1]);
            if(UCLN(a, b) == 1)
                Console.Write("yes");
            else
                Console.Write("no");
        }
        static int UCLN(int a, int b)
        {
            if(b == 0)
                return a;
            return UCLN(b, a% b);
        }
    }
}