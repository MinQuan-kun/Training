#include <iostream>
using namespace std;
int main ()
{
    for(int i = 100; i < 999; i++)
    {
        int tram = i / 100;
        int chuc = i / 10 % 10;
        int donvi = i % 10;
        int New = tram * 1000 + chuc * 100 + donvi;
        
        if(donvi - chuc == 3 && donvi - tram == 6 && New - 2250 == i)
        {
            cout << i;
        }
    }
    // cout << 258;
    return 0;
}