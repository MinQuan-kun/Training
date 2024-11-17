using System;
namespace DK04
{
    public class Program
    {
        static void Main(string[]args)
        {
            double a;
            a = double.Parse(Console.ReadLine());  
            
            if (a < 0)
            {
                if (Math.Abs(a) - Math.Abs((int)a) >= 0.5)
                    Console.WriteLine((int)a - 1); 
                else
                {
                    if ((int)a == 0)
                        Console.WriteLine(0); 
                    else 
                        Console.WriteLine((int)a);  
                }
            }
            else
            {
                if (a - (int)a >= 0.5)
                    Console.WriteLine((int)a + 1);  
                else
                    Console.WriteLine((int)a);
            }
        }
    }
}
