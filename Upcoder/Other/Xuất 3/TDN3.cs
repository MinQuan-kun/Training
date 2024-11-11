using System;
namespace Xuat
{
    public class Program
    {
        static void Main(string[]args)
        {
            double x = double.Parse(Console.ReadLine());
            //Lần 1
            x *= (1 - 0.1);
            //Lần 2
            x *= (1 - 0.05);
            Console.Write("{0:0}", x);
        }
    }
}