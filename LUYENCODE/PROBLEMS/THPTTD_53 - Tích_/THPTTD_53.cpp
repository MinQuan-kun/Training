#include<bits/stdc++.h>
using namespace std;
int main()
{
    ifstream fin("TICH.INP");
    ofstream fout("TICH.OUT");
    int a, b;
    int TG = 0;
    fin >> a >> b;
    while(a != 1)
    {
        if(a % 2 == 0)
            TG += b;
        a /= 2;
        b *= 2;
    }
    fout << TG;
    return 0;
}