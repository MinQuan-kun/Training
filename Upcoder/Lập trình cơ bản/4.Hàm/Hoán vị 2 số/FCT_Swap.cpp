#include<bits/stdc++.h>
using namespace std;

void Switch(int a, int b) {
    cout << b << " " << a; // In ra hai số đã đổi chỗ
}

int main() {
    int x, y;
    cin >> x >> y; // Nhập vào hai số nguyên
    Switch(x, y); // Gọi hàm Switch để đổi chỗ và in ra
    return 0;
}
