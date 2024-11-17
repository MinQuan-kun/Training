#include<bits/stdc++.h>
using namespace std;
int main()
{
    double a, b, c;
    cin >> a >> b >> c;
    if(a == 0)
    {
        if(b == 0)
        {
            if(c == 0)
                cout <<"WOW";
            else
                cout <<"NO";
        }
        else if(c == 0)
            cout << fixed << setprecision(2) << b * 0;
        else
            cout << fixed << setprecision(2) << (-c / b);;
    }
    else
    {
        double Delta = pow(b , 2) - 4 * a * c;
        if(Delta < 0)
            cout << "NO";
        else if(Delta == 0)
            cout << fixed << setprecision(2) << -b / (2 * a);
        else if(Delta > 0)
        {
            double x1 = (- b - sqrt(Delta)) / (2 * a);
            double x2 = (- b + sqrt(Delta)) / (2 * a);
            if(x1 > x2)
                cout << fixed << setprecision(2) << x2 << " " << x1;
            else
                cout << fixed << setprecision(2) << x1 << " " << x2;
        }
    }
    return 0;
}