// Cho mảng số nguyên A[] gồm N phần tử hãy tìm dãy con(Không nhất thiết các phần tử phải liên tiếp) tăng
// chặt dài nhất của mảng A
// Input:
// Dòng 1: N(số lượng phần tử)
// Dòng 2: N phần tử của mảng A
// Output: Độ dài nhất
// Ví dụ 6
// 1 3 2 8 4 5
// output: 4

#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    vector<int> a(n);
    for(int i = 0; i < n; i++)
        cin >> a[i];
    vector<int> L(n, 1);
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < i; j++)
        {
            if(a[i] > a[j])
                L[i] = max(L[i], L[j] + 1);
        }
    }
    cout << *max_element(L.begin(), L.end()) << endl;
    return 0;
}

// Luyện thêm:
// https://codeforces.com/problemsets/acmsguru/problem/99999/521
// https://cses.fi/problemset/task/1145
// https://leetcode.com/problems/longest-increasing-subsequence/
// https://leetcode.com/problems/number-of-longest-increasing-subsequence/


