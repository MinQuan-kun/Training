#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    string input;
    cin.ignore();
    while(n != 0)
    {
        getline(cin, input);
        string res;
        string lastword;
        stringstream ss(input);
        string word;
        while(ss >> word)
        {
            res += tolower(word[0]);
            lastword = word;
        }
        // Loại bỏ ký tự cuối 
        res.pop_back();
        res += lastword;
        if(n != 1)
            cout << res << endl;
        else
            cout << res;
        n--;
    }
    return 0;
}