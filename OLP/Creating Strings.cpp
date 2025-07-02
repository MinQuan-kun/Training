#include <bits/stdc++.h>
using namespace std;

set<string> result;

void backtrack(string s, int index) {
    if (index == s.length()) {
        result.insert(s);
        return;
    }

    for (int i = index; i < s.length(); i++) {
        swap(s[index], s[i]);            
        backtrack(s, index + 1);
        swap(s[index], s[i]);
    }
}

int main() {
    string s;
    cin >> s;

    backtrack(s, 0);

    cout << result.size() << endl;

    for (const auto& str : result) {
        cout << str << endl;
    }

    return 0;
}
