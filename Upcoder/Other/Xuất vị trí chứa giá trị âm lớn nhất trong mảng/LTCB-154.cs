using System;
namespace MinAm
{
    public class Program
    {
        static void Main(string[]args)
        {
            int n = int.Parse(Console.ReadLine());
            string []input = Console.ReadLine().Split(' ');
            double [] Arr = new double[n];
            for(int i = 0; i < n; i++)
                Arr[i] = double.Parse(input[i]);
            double Min = -99999999;
            int pos = -1;
            for(int i = 0; i < n; i++) {
                if (Arr[i] < 0 && (pos == -1 || Arr[i] < Min)) 
                {
                    Min = Arr[i];
                    pos = i;
                }
            }
            Console.Write(pos);
        }
    }
}