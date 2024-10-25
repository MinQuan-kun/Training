#include<bits/stdc++.h>
using namespace std;
int main (){
    int x;
    int s = 0;
    while(cin >> x){
        s += x;
        if(x == 0)
            break;
    }
    if(s % 10 == 0)
    {
        cout << "DEP";
        return 0;
    }if(s % 10 == 5)
    {
        cout << "TRUNGBINH";
        return 0;
    }
    cout << "XAU";
    return 0;
}