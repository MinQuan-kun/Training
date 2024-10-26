#include<bits/stdc++.h>
using namespace std;
int main() 
{
    int h;
    cin >> h;
    // In tam giác cân sao rỗng
    for (int i = 0; i < h; ++i) 
    {
        for (int j = 0; j < 2 * h - 1; ++j) 
        {
            if (i == h - 1 || i + j == h - 1 || j - i == h - 1)
                cout << "*";
            else 
                cout << " ";
        }
        if (i < h - 1) 
            cout << endl;
    }
    return 0;
}
