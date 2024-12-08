#include <bits/stdc++.h>
using namespace std;

int main() {
    string input;
    getline(cin, input);

    vector<char> v;           
    unordered_set<char> seen; 
    bool spaceAdded = false; 

    for (char x : input) {
        if (x == ' ') {
            if (!spaceAdded) {
                v.push_back(x);
                spaceAdded = true; 
            }
        } else if (seen.find(x) == seen.end()) {
            v.push_back(x);
            seen.insert(x);
        }
    }

    cout << v.size();
    return 0;
}
