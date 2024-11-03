using System;
namespace MANGCS1{
    public class Program
    {
        static void Main()
        {
            string[] input = Console.ReadLine().Split(' ');
            int x = int.Parse(input[0]);
            int k = int.Parse(input[1]);
    
            string[] arrInput = Console.ReadLine().Split(' ');
            int n = arrInput.Length;
            int[] a = new int[n];
    
            for (int i = 0; i < n; i++)
            {
                a[i] = int.Parse(arrInput[i]);
            }
    
            for (int i = 0; i <= n; i++) 
            {
                if (i == x)
                {
                    Console.Write(k + " ");
                }
                if (i < n)
                {
                    Console.Write(a[i] + " ");
                }
            }
        }
    }
}