#include <bits/stdc++.h>
using namespace std;

int main() {
    string input;
    getline(cin, input); 
    stringstream ss(input); 
    string word; 
    int cnt = 0; 

    while (ss >> word)
        cnt++; 

    cout << cnt;
    return 0;
}
