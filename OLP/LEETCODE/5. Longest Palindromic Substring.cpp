string check(int l, int r, string s)
{
    while(l >= 0 && r < s.size() && s[l] == s[r])
    {
        l-= 1;
        r += 1;
    }
    return s.substr(l + 1, r - l - 1);
}

class Solution {
public:
    string longestPalindrome(string s) {
        string result = "";
        for(int i = 0; i < s.size(); i++)
        {
            string sub1 = check(i, i, s);
            if(sub1.size() > result.size())
                result = sub1;
            string sub2 = check(i, i+ 1, s);
            if(sub2.size() > result.size())
                result = sub2;
        }
        return result;
    }
};