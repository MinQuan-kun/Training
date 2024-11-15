using System;
namespace CB5
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []line = Console.ReadLine().Split(' ');
            float a = float.Parse(line[0]);
            float b = float.Parse(line[1]);
            if(a == 0)
            {
                if(b == 0)
                    Console.Write("WOW");
                else
                    Console.Write("NO");
            }
            else
                Console.Write("{0:0.00}", -b / a);
        }
    }
}