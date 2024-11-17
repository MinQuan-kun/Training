#include<bits/stdc++.h>
using namespace std;
int main()
{
    vector<long long> v;
    long long n;
    cin >> n;
    long long temp;
    for(long long i = 0; i < n; i++)
    {
        cin >> temp;
        v.push_back(temp);
    }

    // Map lưu số lượng xuất hiện của từng số
    map<long long, long long> freq;

    // Đếm tần suất xuất hiện của từng số
    for (long long x : v) {
        freq[x]++;
    }

    // Tính tổng số cặp
    long long total_pairs = 0;
    for (auto pair : freq) {
        long long count = pair.second;
        total_pairs += (count * (count - 1)) / 2; // Công thức tính số cặp
    }

    cout << total_pairs << endl; // Xuất tổng số cặp
    return 0;
}