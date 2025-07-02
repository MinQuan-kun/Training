#include <bits/stdc++.h>
using namespace std;

int main() {
    string s;
    cin >> s;

    vector<vector<char>> evenGroups, oddGroups;
    string used = "";

    for (char c : s) {
        if (used.find(c) != string::npos)
            continue;

        vector<char> group;
        for (char x : s) {
            if (x == c)
                group.push_back(x);
        }

        if (group.size() % 2 == 0)
            evenGroups.push_back(group);
        else
            oddGroups.push_back(group);

        used += c;
    }

    if (oddGroups.size() > 1) {
        cout << "NO SOLUTION";
        return 0;
    }

    string half = "", mid = "";

    for (auto &group : evenGroups) {
        for (int i = 0; i < group.size() / 2; ++i)
            half += group[i];
    }

    if (!oddGroups.empty()) {
        for (char c : oddGroups[0])
            mid += c;
    }

    string res = half + mid + string(half.rbegin(), half.rend());
    cout << res;

    return 0;
}
