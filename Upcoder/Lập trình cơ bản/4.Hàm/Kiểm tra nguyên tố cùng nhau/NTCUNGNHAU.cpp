#include<bits/stdc++.h>
using namespace std;
int UCLN(int a, int b){
    if(b == 0)
        return a;
    else
        return UCLN(b, a % b);
}
int main(){
    int a, b;
    cin >> a >> b;
    if(UCLN(a, b) == 1)
        cout << "yes";
    else 
        cout << "no";
    return 0;
}