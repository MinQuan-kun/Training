using System;
namespace timso
{
    public class Program
    {
        static void Main(string[]args)
        {
            for (int i = 100; i < 1000; i++)
            {
                int tram = i / 100;
                int chuc = (i / 10) % 10;
                int donvi = i % 10;
                int New = tram * 1000 + chuc * 100 + donvi;

                if (donvi - chuc == 3 && donvi - tram == 6 && New - 2250 == i)
                    Console.Write(i);
            }
        }
    }
}

