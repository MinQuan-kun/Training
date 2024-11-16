#include <bits/stdc++.h>
using namespace std;

int main() {
    ifstream fin("THUONG.INP");
    ofstream fout("THUONG.OUT");
    
    long long n, m;
    vector<long long> v1;
    unordered_set<long long> v2_set; // Dùng set để lưu các phần tử cần loại bỏ
    map<long long, long long> cnt; // Đếm tần suất các phần tử còn lại

    // Đọc dữ liệu
    fin >> n >> m;
    long long index;
    for (long long i = 0; i < n; i++) {
        fin >> index;
        v1.push_back(index);
    }
    for (long long j = 0; j < m; j++) {
        fin >> index;
        v2_set.insert(index); // Thêm vào set
    }

    // Loại bỏ các phần tử trong v2 khỏi v1
    vector<long long> filtered_v1;
    for (long long x : v1) {
        if (v2_set.find(x) == v2_set.end()) { // Nếu không có trong v2
            filtered_v1.push_back(x);
            cnt[x]++;
        }
    }

    // Ghi các phần tử còn lại vào file
    for (long long index : filtered_v1) {
        fout << index << " ";
    }
    fout << endl;

    // Tính giá trị lớn nhất của giá trị * tần suất
    long long max_value = 0;
    for (const auto& [key, frequency] : cnt) {
        long long temp = key * frequency;
        max_value = max(max_value, temp);
    }

    fout << max_value;

    return 0;
}