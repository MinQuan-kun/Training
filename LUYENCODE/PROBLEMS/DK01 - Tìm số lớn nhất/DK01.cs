using System;
namespace DK01
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            int a = int.Parse(line[0]);
            int b = int.Parse(line[1]);
            int max = a;
            if(max < b)
                max = b;
            Console.Write(max);
        }
    }
}