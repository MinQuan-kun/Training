

long long gcd(long long x, long long y) {
    if (y == 0) return x;
    return gcd(y, x % y);
}

class Solution {
public:
    int nthMagicalNumber(int n, long long a, long long b) {
        long long MOD = 1e9 + 7;
        long long lcm = a / gcd(a, b) * b;

        long long low = 1;
        long long high = (long long)n * min(a, b);
        long long ans = high;

        while (low <= high) {
            long long x = (low + high) / 2;
            long long cnt = x / a + x / b - x / lcm;

            if (cnt >= n) {
                ans = x;
                high = x - 1;
            } else {
                low = x + 1;
            }
        }

        return (int)(ans % MOD);
    }
};
