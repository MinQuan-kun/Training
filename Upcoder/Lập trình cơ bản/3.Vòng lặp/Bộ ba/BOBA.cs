using System;

class Program
{
    static void Main()
    {
        string []input = Console.ReadLine().Split(' ');
        int N = int.Parse(input[0]);
        int M = int.Parse(input[1]);
        int K = int.Parse(input[2]);

        int Q = 0;
        int W = 0;

        while (N != 0)
        {
            Q += N % 10;
            N /= 10;
        }

        while (M >= 9)
        {
            M /= 10;
            W = M;
        }

        if (Q + W == K)
            Console.Write("Yes");
        else
            Console.Write("No");
    }
}
