#include <iostream>
using namespace std;
int main () {
    int N;
    cin >> N;
    int S = 0;
    for (int i = 1; i <= 10; i++){
        S = i * N;
        cout << N << "x" << i << "=" << S << endl;
    }
    return 0;
}