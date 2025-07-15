#include<bits/stdc++.h>
using namespace std;
long long Mul(long long a, long long b, long long c)
{
    long long res = 0;
    a %= c;
    if(b == 0)
        return 0;
    res = Mul((a << 1) % c, (b >> 1) % c, c);
    if(b & 1)
        res = (res + a) % c;
    return res;
}

long long Pow(long long a, long long b, long long c)
{
    long long res = 1;
    a %= c;
    if(b == 0)
        return 1;
    res = Pow(Mul(a, a, c), (b >> 1), c);
    if(b & 1)
        res = Mul(res, a, c);
    return res;
}
bool test(long long a, long long n, long long k, long long m)
{
    long long mod = Pow(a, m, n);
    if (mod == 1 || mod == n - 1)
            return true;
    for (int l = 1; l < k; ++l)
    {
        mod = Mul(mod, mod, n);
        if (mod == n - 1)
            return true;
    }
    return false;
}
// It chinh xac hoc
// bool RabinMiller(long long n)
// {
//     if (n == 2 || n == 3 || n == 5 || n == 7)
//         return true;
//     if (n < 11)
//         return false;

//     long long k = 0, m = n - 1;
//     while (m % 2 == 0)
//     {
//         m /= 2;
//         k++;
//     }

//     const static int repeatTime = 3;
//     for (int i = 0; i < repeatTime; ++i)
//     {
//         long long a = rand() % (n - 3) + 2;
//         if (!test(a, n, k, m))
//             return false;
//     }
//     return true;
// }

bool MillerRabin(long long n)
{
    static vector<int> checkSet = {2,3,5,7,11,13,17,19,23,29,31,37};
    for (auto a : checkSet)
        if (n == a)
            return true;
    if (n < 41)
        return false;

    long long k = 0, m = n - 1;
    while (m % 2 == 0)
    {
        m /= 2;
        k++;
    }

    for (auto a : checkSet)
        if (!test(a, n, k, m))
            return false;
    return true;
}


int main()
{
    long long n;
    cin >> n;
    if(RabinMiller(n))
        cout << "YES";
    else
        cout << "NO";
    return 0;
}