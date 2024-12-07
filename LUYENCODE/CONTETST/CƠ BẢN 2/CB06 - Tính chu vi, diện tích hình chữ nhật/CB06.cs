using System;
namespace CB6
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            int a = int.Parse(line[0]);
            int b = int.Parse(line[1]);
            Console.WriteLine((a + b) * 2);
            Console.Write(a * b);
        }
    }
}