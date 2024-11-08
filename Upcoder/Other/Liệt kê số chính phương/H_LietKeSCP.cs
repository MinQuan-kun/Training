using System;
namespace SoCP
{
    public class Program
    {
        static void Main(string[]args)
        {
            string []input = Console.ReadLine().Split(' ');
            int n = int.Parse(input[0]);
            int m = int.Parse(input[1]);
            for(int i = n; i <= m; i++)
            {
                if(SCP(i))
                {
                    Console.WriteLine(i);
                }
            }
        }
        static bool SCP(int n)
        {
            double temp = Math.Sqrt(n);
            temp = (int)temp;
            if(temp * temp == n)
                return true;
            return false;
        }
    }
}