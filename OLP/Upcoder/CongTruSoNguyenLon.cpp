#include<bits/stdc++.h>
using namespace std;

string tinhtong(string a, string b)
{
    while(a.size() < b.size())
        a = "0" + a;
    while(b.size() < a.size())
        b = "0" + b;
    string res = "";
    int nho = 0, tmp = 0;
    for(int i = a.size() - 1 ; i >= 0; i--)
    {
        tmp = (a[i] -'0') + (b[i] - '0') + nho;
        res = (char)(tmp % 10 + '0') + res;
        nho = tmp / 10;
    }
    if(nho > 0) return "1" + res;
    return res;
}

int sosanh(string a, string b)
{
    if(a.size() > b.size()) return 1;
    if(a.size() < b.size()) return -1;
    for(int i = 0; i < a.size(); i++)
    {
        if(a[i] > b[i]) return 1;
        if(a[i] < b[i]) return -1;
    }
    return 0;
}

string tinhhieu(string a, string b)
{
    int sign = sosanh(a, b);
    if(sign == -1 )
    {
        swap(a, b);
        cout << "-";
    }

    while(b.size() < a.size())
        b = "0" + b;
    string res = "";
    int nho = 0, tmp = 0;
    for(int i = a.size() - 1 ; i >= 0; i--)
    {
        tmp = (a[i] -'0') - (b[i] - '0') - nho;
        if(tmp < 0)
        {
            tmp += 10;
            nho = 1;
        }
        else nho = 0;
        res = (char)(tmp + '0') + res;
    }
    while(res.size() > 1 && res[0] == '0') res.erase(0, 1);
    return res;
}


int main()
{
    string a, b;
    cin >> a >>b;
    cout << a << "+" << b << "=" << tinhtong(a, b) << endl;
    cout << a << "-" << b << "=" << tinhhieu(a, b);
    return 0;
}