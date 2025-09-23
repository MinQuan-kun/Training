#include<bits/stdc++.h>
using namespace std;
string tinhtong(string a, string b)
{
    string res = "";
    while(a.size() < b.size())
        a = "0" + a;
    while(b.size() < a.size())
        b = "0" + b;
    int nho, tmp = 0;
    for(int i = a.size() - 1 ; i >= 0; i--)
    {
        tmp = (a[i] -'0') + (b[i] - '0') + nho;
        res = (char)(tmp % 10 + '0') + res;
        nho = tmp / 10;
    }
    if(nho > 0) return "1" + res;
    return res;
}

int main()
{
    string a, b;
    cin >> a >>b;
    cout << tinhtong(a, b);
    return 0;
}