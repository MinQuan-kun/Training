using System;
namespace CB4
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            float a = float.Parse(line[0]);
            float b = float.Parse(line[1]);
            Console.WriteLine(a + b);
            Console.WriteLine(a - b);
            Console.WriteLine(a * b);
            if(b == 0)
                Console.Write("ERROR");
            else
                Console.Write("{0:0.00}" a / b);
        }
    }
}