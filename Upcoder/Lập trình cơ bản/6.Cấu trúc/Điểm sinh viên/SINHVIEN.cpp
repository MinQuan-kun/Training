#include<bits/stdc++.h>
using namespace std;

struct SV
{
    string HoTen;
    int NamSinh;
    float DTB;
};

istream & operator >> (istream & in, SV & x)
{
    in >> x.HoTen >> x.NamSinh >> x.DTB;
    return in;
}
ostream & operator << (ostream & out, SV x)
{
    out << x.HoTen << " " << x.NamSinh << " " << x.DTB;
    return out;
}


bool operator <(const SV& a, const SV& b) {
    return a.DTB < b.DTB;
}

bool operator >(const SV& a, const SV& b) {
    return a.DTB > b.DTB;
}

int main()
{
    SV a;
    vector<SV> v;
    while(cin >> a)
        v.push_back(a);
     if (!v.empty()) 
     {
        // Tìm sinh viên có điểm cao nhất và điểm thấp nhất
        auto maxIt = max_element(v.begin(), v.end(), [](const SV& a, const SV& b) {
            return a.DTB < b.DTB;
        });
        auto minIt = min_element(v.begin(), v.end(), [](const SV& a, const SV& b) {
            return a.DTB < b.DTB;
        });
        
        // Lấy điểm cao nhất và thấp nhất
        float maxScore = maxIt->DTB;
        float minScore = minIt->DTB;
        
        int n = 1;
        // In ra sinh viên có điểm cao nhất
        cout << "Diem cao nhat lop:" << endl;
        for (const auto& sv : v) {
            if (sv.DTB == maxScore) {
                cout << "#" << n << endl;
                cout << sv << endl;
                n++;
            }
        }
        n = 1;
        // In ra sinh viên có điểm thấp nhất
        cout << "Diem thap nhat lop:" << endl;        
        for (const auto& sv : v) {
            if (sv.DTB == minScore) {
                cout << "#" << n << endl;
                cout << sv << endl;
                n++;
            }
        }
    } 
    else 
        return 0;
    return 0;
}