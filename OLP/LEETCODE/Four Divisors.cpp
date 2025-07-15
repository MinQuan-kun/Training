class Solution {
public:
    bool isPrime(long long x)
    {
        if (x < 2) return false;
        for (int i = 2; i * i <= x; ++i)
            if (x % i == 0) return false;
        return true;
    }
    int sumFourDivisors(vector<int>& nums) {
        int total = 0;

        for (int x : nums) {
            int sum = 0;

            // Check dạng p * q
            for (int i = 2; i * i <= x; ++i) {
                if (x % i == 0) {
                    int j = x / i;

                    // Nếu i == j → không phải p ≠ q
                    if (i == j) break;

                    // Cả i và j phải là số nguyên tố
                    if (isPrime(i) && isPrime(j)) {
                        sum = 1 + i + j + x;
                    }
                    break;
                }
            }

            // Check dạng p^3
            int root = round(pow(x, 1.0 / 3));
            if (root * root * root == x && isPrime(root)) {
                sum = 1 + root + root * root + x;
            }

            total += sum;
        }
        return total;
    }
};