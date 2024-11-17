#include <bits/stdc++.h>
using namespace std;

bool check(double a, double b, double c) {
    return (a + b > c && a + c > b && b + c > a);
}

bool Deu(double a, double b, double c) {
    return (a == b && b == c);
}

bool Vuong(double a, double b, double c) {
    double epsilon = 1e-6; // Độ chính xác
    return (fabs(a * a + b * b - c * c) < epsilon ||
            fabs(a * a + c * c - b * b) < epsilon ||
            fabs(b * b + c * c - a * a) < epsilon);
}

// Kiểm tra tam giác cân
bool Can(double a, double b, double c) {
    return (a == b || b == c || a == c);
}

int main() {
    double a, b, c;
    cin >> a >> b >> c;

    // Kiểm tra điều kiện tam giác
    if (!check(a, b, c)) {
        cout << "-1" << endl;
    } else if (Deu(a, b, c)) {
        cout << "deu" << endl;
    } else if (Vuong(a, b, c)) {
        cout << "vuong" << endl;
    } else if (Can(a, b, c)) {
        cout << "can" << endl;
    } else {
        cout << "tam giac binh thuong" << endl;
    }

    return 0;
}
