#include<bits/stdc++.h>
using namespace std;
int main()
{
    float x;
    int s = 0;
    int dem = 0;
    while(cin >> x)
    {
        if(x == -1)
            break;
        s += x;
        dem++;
    }
    float DTB = s / dem;
    if(DTB < 4)
    {
        cout << "F";
        return 0;
    }
    if(4 <= DTB && DTB < 5.5)
    {
        cout << "D";
        return 0;
    }
    if(5.5 <= DTB && DTB < 7.0)
    {
        cout << "C";
        return 0;
    }
    if(7.0 <= DTB && DTB < 8.5)
    {
        cout << "B";
        return 0;
    }
    if(8.5<=DTB)
        cout << "A";
    return 0;
}