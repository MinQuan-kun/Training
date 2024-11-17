#include <bits/stdc++.h>
using namespace std;

int main()
{
    string n;
    cin >> n;
    reverse(n.begin(), n.end()); // Đảo ngược chuỗi
    size_t pos = n.find_first_not_of('0');
    if (pos != string::npos) {
        n = n.substr(pos);
    }
    cout << n;
    return 0;
}
