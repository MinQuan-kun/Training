using System;
namespace Ngaythangnam
{
    public class Program
    {
        static void Main(string[]args)
        {
            string[] input = Console.ReadLine().Split(' ');
            int m = int.Parse(input[0]);
            int y = int.Parse(input[1]);
            if(m >= 1 && m <= 12 && y > 0)
            {
                if(((y % 400 == 0) || (y % 4 == 0)) && (y % 100 != 0) && m == 2)
                    Console.Write("29");
                else if(m == 2)
                    Console.Write("28");
                else if((m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12))
                    Console.Write("31");
                else if((m == 4 || m == 6 || m == 9 || m == 11))
                    Console.Write("30");
                else 
                    Console.Write("INVALID");
            }
            else
                Console.Write("INVALID");
        }
    }
}