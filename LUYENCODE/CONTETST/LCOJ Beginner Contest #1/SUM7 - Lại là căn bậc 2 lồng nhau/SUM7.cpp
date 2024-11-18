#include<bits/stdc++.h>
using namespace std;
float Can(float temp)
{
    float s = sqrt(temp);
    if(s == 1)
        return 1;
    return sqrt(s+sqrt(temp - 1));
}
int main()
{
    int n;
    cin >> n;
    float temp;
    while(n--)
    {
        cin >> temp;
        cout << fixed << setprecision(5) << Can(temp) << endl;
    }
    return 0;
}