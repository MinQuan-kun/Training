using System;
namespace HH_XOASO
{
    public class Program
    {
        static void Main(string[] args)
        {
            string N = Console.ReadLine();
            string maxNumber = "";
    
            for (int i = 0; i < N.Length; i++)
            {
                string temp = N.Substring(0, i) + N.Substring(i + 1);
    
                if (maxNumber == "" || String.Compare(temp, maxNumber) > 0)
                {
                    maxNumber = temp;
                }
            }
            
            Console.Write(N.Length == 1 ? N : maxNumber);
        }
    }

}
    