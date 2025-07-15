#include<bits/stdc++.h>
using namespace std;
void Bubble_Sort(vector<long long > a)
{
    long long n = 0;
    for(long long i = 0; i < a.size(); i++)
    {
        for(long long j = 0; j < a.size() - 1; j++)
        {
            if(a[j] > a[j + 1])
            {
                swap(a[j], a[j + 1]);
                n++;
            }
        }
            
    }
    cout << "Array is sorted in " << n << " swaps.\n";
    cout << "First Element: " << a[0] << "\n";
    cout << "Last Element: " << a[a.size() - 1] << "\n";
}
int main()
{
    long long n;
    cin >> n;
    vector <long long> a;
    while(n)
    {
        long long x;
        cin >> x;
        a.push_back(x);
        n--;
    }
    Bubble_Sort(a);
}