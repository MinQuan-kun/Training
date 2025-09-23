class Solution {
public:
    int lengthOfLongestSubstring(string s) {
       vector<int> lastchar(256, -1);
       int left = 0;
       int maxlen = 0;
       for(int right = 0; right < (int)s.size(); right++)
       {
        char kt = s[right];
        if(lastchar[kt] >= left)
        {
            left = lastchar[kt] + 1;
        }
        lastchar[kt] = right;
        maxlen = max(maxlen, right - left + 1);
       }
       return maxlen;
    }
};
