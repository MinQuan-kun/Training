using System;
namespace CB7
{
    public class Program
    {
        static float pi = 3.14;
        static void Main(string[]args)
        {
            float a = float.Parse(Console.ReadLine());
            Console.WriteL("{0:0.000} {1:0.000}", (2 * pi * a), (pi * Math.Pow(a, 2)));
        }
    }
}