class Solution {
public:
    int countPrimes(int n) {
        if (n <= 2) return 0;

        vector<bool> SNT(n, true);
        SNT[0] = SNT[1] = false;

        for (int i = 2; i * i < n; ++i) {
            if (SNT[i]) {
                for (int j = i * i; j < n; j += i)
                    SNT[j] = false;
            }
        }

        return count(SNT.begin(), SNT.end(), true);
    }
};