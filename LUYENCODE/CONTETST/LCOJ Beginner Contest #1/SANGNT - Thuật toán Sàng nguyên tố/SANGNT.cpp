#include<bits/stdc++.h>
using namespace std;
void Daysnt(int n)
{
    vector<bool> res(n + 1, true); // Khởi tạo vector<bool> với n+1 phần tử, tất cả là true
    res[0] = res[1] = false;       // 0 và 1 không phải số nguyên tố
    //Kiểm tra 
    //Giả sử 2, thì các bội của 2 sẽ không phải snt
    for(int i = 2; i * i <= n; i++)
    {
        if(res[i])
            for(int j = i * i; j <= n; j += i)
                res[j] = false;
    }
    for(int i = 2; i <= n; i++)
        if(res[i])
            cout << i << " ";
}

int main()
{
    int n;
    cin >> n;
    Daysnt(n);
    return 0;
}

