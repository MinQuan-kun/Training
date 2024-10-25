#include <iostream>
using namespace std;
int main()
{
    int N, M, K;
    int Q = 0;
    int W = 0;
    cin >> N >> M >> K;
    while (N != 0)
    {
        Q = Q + N % 10;
        N /= 10;
    }
    while (M >= 9)
    {
        M = M / 10;
        W = M;
    }
    if(Q + W == K)
        cout << "Yes";
    else 
        cout << "No";
    return 0;
}