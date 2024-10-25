#include <iostream>
using namespace std;
int main() 
{
    int a, b;
    cin >> a >> b;
    for(int i = a; i > 0; i--)
    {
        if(a % i == 0 && b % i == 0)
        {
            cout << i << " ";
            break;
        }
    }
    for(int k = a; k <= a * b; k++)
    {
        if(k % a == 0 && k % b == 0)
        {
            cout << k;
            break;
        }
    }
return 0;
}