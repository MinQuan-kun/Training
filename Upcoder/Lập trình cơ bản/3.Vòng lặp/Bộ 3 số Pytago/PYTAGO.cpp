#include <iostream>
#include <math.h>
using namespace std;
int main () {
    int n, c;
    cin >> n;
    if(n <= 4)
        cout << -1;
    for (int i = 1; i <= n; i++)
    {
        for(int k = 1; k <= n; k++)
        {
            c = sqrt(i * i + k * k);
            if(c <= n && c * c == i * i + k * k && k > i)
                cout << i << " " << k << " " << c << endl;
        }
    }
    return 0;
}
