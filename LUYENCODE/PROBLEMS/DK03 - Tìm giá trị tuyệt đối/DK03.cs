using System;
namespace DK03
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            int a = int.Parse(line[0]);
            int b = int.Parse(line[1]);
            Console.WriteLine(Math.Abs(a - b));
        }
    }
}