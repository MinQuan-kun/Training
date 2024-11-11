#include<bits/stdc++.h>
using namespace std;
int main()
{
    float x;
    cin >> x;
    //Giảm lần 1
    x *= (1 - 0.1);
    //Giảm lần 2
    x *= (1- 0.05);
    cout << x;
    return 0;
}