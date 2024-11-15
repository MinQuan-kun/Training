#include <bits/stdc++.h>
using namespace std;

int n;

void input(vector<int>& a) 
{
    cin >> n;
    a.resize(n);
    for(int i = 0; i < n; i++) 
        cin >> a[i];
    sort(a.begin(), a.end());  
}

void print(vector<int>& a) 
{
    vector<int> check(n, 0);  
    for(int i = 0; i < n; i++) 
    {
        if(check[i] == 0)  // Nếu phần tử chưa được đếm
        {
            int count = 1;   // Đếm số lần xuất hiện của phần tử a[i]
            for(int j = i + 1; j < n; j++) 
            {
                if(a[i] == a[j]) {   // Nếu a[i] trùng với a[j]
                    count++;
                    check[j] = 1;  // Đánh dấu a[j] đã được đếm
                }
            }
            cout << a[i] << " " << count << endl;
            check[i] = 1;  // Đánh dấu a[i] đã được đếm
        }
    }
}

int main() {
    vector<int> a;
    input(a);
    print(a);
    return 0;
}
