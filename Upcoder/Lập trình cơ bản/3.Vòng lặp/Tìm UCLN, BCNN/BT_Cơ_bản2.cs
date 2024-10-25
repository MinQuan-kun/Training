using System;
namespace TimUCLNBCNN
{
 public class Program
    {
        static void Main(string[]args)
        {
            string [] input = Console.ReadLine().Split(' ');
            int a = int.Parse(input[0]);
            int b = int.Parse(input[1]);

            // Tìm Ước số chung lớn nhất (GCD)
            for (int i = a; i > 0; i--)
            {
                if (a % i == 0 && b % i == 0)
                {
                    Console.Write(i + " ");
                    break;
                }
            }

            // Tìm Bội số chung nhỏ nhất (LCM)
            for (int k = a; k <= a * b; k++)
            {
                if (k % a == 0 && k % b == 0)
                {
                    Console.Write(k);
                    break;
                }
            }
        }
    }
}
   
