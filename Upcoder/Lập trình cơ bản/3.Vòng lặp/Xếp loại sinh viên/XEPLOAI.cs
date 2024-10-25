using System;

namespace XEPLOAISV
{
    public class Program
    {
        static void Main(string[] args)
        {
            float s = 0;
            int dem = 0;
            float x;

            while (true)
            {
                x = float.Parse(Console.ReadLine());
                if (x == -1)
                {
                    break;
                }
                s += x;
                dem++;
            }

                float DTB = s / dem;
                if (DTB < 4)
                {
                    Console.WriteLine("F");
                }
                else if (4 <= DTB && DTB < 5.5)
                {
                    Console.WriteLine("D");
                }
                else if (5.5 <= DTB && DTB < 7.0)
                {
                    Console.WriteLine("C");
                }
                else if (7.0 <= DTB && DTB < 8.5)
                {
                    Console.WriteLine("B");
                }
                else // 8.5 <= DTB
                {
                    Console.WriteLine("A");
                }
            
        }
    }
}

