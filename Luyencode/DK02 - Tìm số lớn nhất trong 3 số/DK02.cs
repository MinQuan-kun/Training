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
            int c = int.Parse(line[2]);
            int max = a;
            if(max < b)
                max = b;
            if(max < c)
                max = c;
            Console.Write(max);
        }
    }
}