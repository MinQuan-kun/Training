#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int max = n * 2;
    int a1[n], a2[n];
    int res[max];
    //Nhập mảng a1
    for(int i = 0; i < n; i++)
    {
        cin >> a1[i];
        res[i] = a1[i];
    }
    //Nhập mảng a2
    for(int j = 0; j < n; j++)
    {
        cin >> a2[j];
        res[n + j] = a2[j];
    }
    //Sắp xếp 
    sort(res, res + max);
    //Xuất mảng
    for(int i = 0; i < max; i++)
        cout << res[i] << " ";
    return 0;
}