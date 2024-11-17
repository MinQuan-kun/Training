#include <bits/stdc++.h>
using namespace std;

// Định nghĩa cấu trúc Stack
class Stack {
private:
    int *arr;       // Mảng lưu trữ các phần tử
    int topIndex;   // Chỉ số phần tử trên cùng
    int capacity;   // Dung lượng tối đa của stack

public:
    // Hàm khởi tạo stack
    void init(int cap) {
        capacity = cap;
        arr = new int[capacity];
        topIndex = -1; // Stack bắt đầu trống
    }

    // Hàm kiểm tra stack có đầy không
    bool full() {
        return topIndex == capacity - 1;
    }

    // Hàm kiểm tra stack có rỗng không
    bool empty() {
        return topIndex == -1;
    }

    // Hàm đẩy phần tử vào stack
    void push(int value) {
        if (full())
            return;
        arr[++topIndex] = value;
    }

    // Hàm lấy phần tử trên cùng của stack
    int top() {
        if (!empty())
            return arr[topIndex];
        return -1; // Trả về -1 nếu stack rỗng
    }

    // Hàm loại bỏ phần tử trên cùng của stack
    void pop() {
        if (!empty())
            --topIndex;
    }

    // Hàm hủy stack
    ~Stack() {
        delete[] arr;
    }
};
// Hàm kiểm tra phải kiểu dữ liệu int không 
bool checknum(char input) {
    return isdigit(input);
}

int main() {
    string input;
    getline(cin, input); // Nhập biểu thức hậu tố
    Stack stack;  // Khởi tạo đối tượng stack
    stack.init(100); // Khởi tạo stack với dung lượng tối đa 100

    stringstream ss(input);
    string token;

    while (ss >> token) {
        if (isdigit(token[0])) {
            // Nếu là số, chuyển thành số nguyên và đẩy vào stack
            stack.push(stoi(token));
        } else {
            // Nếu là toán tử, lấy hai phần tử từ stack
            int b = stack.top(); stack.pop();
            int a = stack.top(); stack.pop();
            int res = 0;

            if (token == "+") {
                res = a + b;
            } else if (token == "-") {
                res = a - b;
            } else if (token == "*") {
                res = a * b;
            } else {
                return 1;
            }
            stack.push(res); // Đẩy kết quả vào stack
        }
    }

    // Kết quả cuối cùng trong stack
    if (!stack.empty())
        cout << stack.top();
    return 0;
}