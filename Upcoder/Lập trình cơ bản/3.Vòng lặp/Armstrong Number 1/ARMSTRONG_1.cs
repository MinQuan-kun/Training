using System;

namespace Armstrong_1
{
    class Program
    {
        static void Main(string[] args)
        {
            int n;
            while (int.TryParse(Console.ReadLine(), out n))
            {
                int temp = n;
                int cnt = 0;
                
                while (temp != 0)
                {
                    cnt++;
                    temp /= 10;
                }
                
                temp = n;
                int sum = 0;
                
                while (temp != 0)
                {
                    sum += (int)Math.Pow(temp % 10, cnt);
                    temp /= 10;
                }

                if (sum == n)
                    Console.WriteLine("YES");
                else
                    Console.WriteLine("NO");
            }
        }
    }
}
