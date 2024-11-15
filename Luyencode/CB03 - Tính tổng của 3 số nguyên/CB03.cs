using System;
namespace Tinhtong
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            int a = int.Parse(line[0]);
            int b = int.Parse(line[1]);
            int c = int.Parse(line[2]);
            Console.Write(a + b + c);
        }
    }
}