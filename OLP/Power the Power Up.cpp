#include <bits/stdc++.h>
using namespace std;
#define PI 3.1415926535897932384626433832795l
#define ll long long
#define ld long double
#define pii pair<int, int>
#define x first
#define y second
#define vii vector<pii>
#define tiii tuple<int, int, int>
#define endl "\n"
const ll MOD = 1e9 + 7;
const ld EPS = 1e-13;
const ll INF = 4e18;
const int MAX_N = 1e5 + 5;

/* BEGIN */
ll powMod(ll a, ll b, ll M) {
    a %= M;
    ll res = 1;
    while (b) {
        if (b % 2) {
            res = (res * a) % M;
        }
        a = (a * a) % M;
        b /= 2;
    }
    return res;
}

int main() {
    ios_base::sync_with_stdio(false);
    cin.tie(0), cout.tie(0);

    /* code below here */
    ll a, b, c;
    while (cin >> a >> b >> c) {
        if (a == -1 && b == -1 && c == -1)
            break;
        if (c == 0)
            cout << a % MOD << endl;
        else {
            if (b == 0)
                cout << 1 << endl;
            else {
                if (a % MOD == 0)
                    cout << 0 << endl;
                else {
                    ll res1 = powMod(b, c, MOD - 1);
                    ll res2 = powMod(a, res1, MOD);
                    cout << res2 << endl;
                }
            }
        }
    }

    return 0;
}