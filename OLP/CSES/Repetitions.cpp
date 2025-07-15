#include<bits/stdc++.h>
using namespace std;
int main()
{
    string n;
    cin >> n;
    int a = n.size();
    int cnt = 1;
    int temp = 1;
    for(int i = 0; i < a; i++)
    {
      char x = n[i];
      char y = n[i + 1];
      if(x == y)
        cnt++;
      else
        cnt = 1;
      temp = max(temp, cnt);
    }
    cout << temp;
}