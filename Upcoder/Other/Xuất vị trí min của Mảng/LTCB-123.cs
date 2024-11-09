using System;

namespace MinIndex
{
    public class Program
    {
        public static int IndexArr(int[] arr, int n)
        {
            int min = 10000000, index = -1;  // Set an initial large value for min
            for (int i = 0; i < n; i++)
            {
                if (arr[i] < min)
                {
                    min = arr[i];
                    index = i;
                }
            }
            return index;
        }

        public static void Main()
        {
            int n = int.Parse(Console.ReadLine());  
            int[] arr = new int[n];
            string []input = Console.ReadLine().Split(' ');
            for (int i = 0; i < n; i++)
            {
                arr[i] = int.Parse(input[i]);  
            }
            Console.WriteLine(IndexArr(arr, n));  
        }
    }
}
