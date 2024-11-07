#include <iostream>
#include <algorithm>  // Để sử dụng hàm sort
using namespace std;

int main() {
    int n, m;
    cin >> n >> m;  

    int a[n][m]; 

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            cin >> a[i][j];
        }
    }

    
    int temp[n * m];
    int index = 0;

    // Chuyển tất cả các phần tử từ ma trận vào mảng 1 chiều
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            temp[index++] = a[i][j];
        }
    }

    // Sắp xếp mảng 1 chiều theo thứ tự tăng dần
    sort(temp, temp + n * m);

    // Chuyển lại các phần tử vào ma trận đã được sắp xếp
    index = 0;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < m; j++) {
            a[i][j] = temp[index++];
        }
    }

    for (int i = 0; i < n; i++) {
        if (i % 2 == 0) {
            for (int j = 0; j < m; j++) {
                cout << a[i][j] << " ";
            }
        } else {
            for (int j = m - 1; j >= 0; j--) {
                cout << a[i][j] << " ";
            }
        }
        cout << endl;
    }

    return 0;
}
