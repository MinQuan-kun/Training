using System;
namespace MANGCS2
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.ReadLine().Split(' ');
            for(int i = 0; i < input.Length; i++)
                Console.Write("{0} ", input[i]);
        }
    }
}