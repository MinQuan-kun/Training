#include <bits/stdc++.h>
using namespace std;

int main()
{
    string input;
    getline(cin , input);
    int n = input.size();
    if(input[0] == '-')
        n--;
    cout << n;
    return 0;
}
