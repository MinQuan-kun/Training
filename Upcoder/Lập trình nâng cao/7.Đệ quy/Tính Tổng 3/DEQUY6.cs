using System;
namespace Dequy
{
    public class Program
    {
        static void Main(string[]args)
        {
            string [] input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            double x = double.Parse(input[1]);
            double S = Dequy(x, n);
            S = (S * 1000) / 1000;
            Console.Write("{0:0.000}",S);
        }
        
        static int Fib(int n)
        {
            if(n == 1)
                return 1;
            return Fib(n - 1) * n;
        }
        static double Dequy(double x, int n)
        {
            if(n == 0)
                return x;
            return Dequy(x , n - 1) + ((( Math.Pow(-1, n)) * (Math.Pow(x, 2 * n + 1))) / Fib(2 * n + 1));
        }
    }
}