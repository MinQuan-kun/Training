using System;
namespace CB8
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            int a = int.Parse(line[0]);
            int b = int.Parse(line[1]);
            Console.WriteLine("{0} + {1} = {2}", a , b, a + b);
        }
    }
}