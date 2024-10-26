#include<iostream>
using namespace std;
int UCLN(long long a, long long b)
{
    if(b == 0) 
        return a;
    return UCLN(b, a % b);
}
int main()
{
    long long a, b;
    cin >> a >> b;
    cout << UCLN(a, b);
    return 0;
}