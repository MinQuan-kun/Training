using System;
namespace Gopmang
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            int max = n * 2;
            int []a1 = new int[n];
            int []a2 = new int[n];
            int []res = new int[max];
            string []input1 = Console.ReadLine().Split(' ');
            string []input2 = Console.ReadLine().Split(' ');
            for(int i = 0; i < n; i++)
            {
                a1[i] = int.Parse(input1[i]);
                a2[i] = int.Parse(input2[i]);
                res[i] = a1[i];
                res[i + n] = a2[i];
            }
            Array.Sort(res);
            for(int i = 0; i < max; i++)
                Console.Write("{0} ", res[i]);
        }
    }
}