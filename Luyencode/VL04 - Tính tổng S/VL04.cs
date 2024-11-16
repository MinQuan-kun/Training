using System;
namespace Tinhtong
{
    public class Program
    {
        static void Main(string[]args)
        {
            double n = double.Parse(Console.ReadLine());
            double s = 0.0;
            for(double i = 2.0; i <= n; i++)
                s += 1.0 / i;
            Console.Write("{0:0.0000}",s);
        }
    }
}