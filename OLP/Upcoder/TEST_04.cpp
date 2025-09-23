#include<bits/stdc++.h>
using namespace std;

int main() {
    long long n;
    cin >> n;
    vector<long long> a(n);
    for (long long &x : a) cin >> x;

    vector<long long> res(n);       
    stack<long long> st;            

    for (long long i = 0; i < n; ++i) {
        while (!st.empty() && a[st.top()] >= a[i]) {
            st.pop();
        }
        if (st.empty()) {
            res[i] = 0;
        } else {
            res[i] = st.top() + 1; 
        }
        st.push(i);
    }

    for (long long x : res) cout << x << " ";
    return 0;
}
