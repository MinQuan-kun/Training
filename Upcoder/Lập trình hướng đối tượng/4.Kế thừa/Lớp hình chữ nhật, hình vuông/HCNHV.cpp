#include<bits/stdc++.h>
using namespace std;
class HCN
{
    protected:
        double _dai;
        double _rong;
    public:
        HCN(double dai, double rong);
        double ChuVi();
        double DienTich();
};

class HV : public HCN
{
    public:
    HV(double canh) : HCN(canh, canh) {};
    double ChuVi();
};

int main()
{
    vector<HCN*> danhSachHinh;
    string loaiHinh;
    double maxChuVi = 0;

    cin >> loaiHinh;
    cin.ignore(); // Bỏ qua ký tự xuống dòng sau khi nhập loại hình

    string line;
    while (getline(cin, line) && !line.empty()) {
        double a, b;
        if (loaiHinh == "HCN") {
            if (sscanf(line.c_str(), "%lf %lf", &a, &b) == 2) {
                danhSachHinh.push_back(new HCN(a, b));
            }
        } else if (loaiHinh == "HV") {
            if (sscanf(line.c_str(), "%lf", &a) == 1) {
                danhSachHinh.push_back(new HV(a));
            }
        }
    }
    
    // Tìm chu vi lớn nhất
    for(auto h : danhSachHinh)
    {
        double Chuvi = h->ChuVi();
        if(Chuvi > maxChuVi)
            maxChuVi = Chuvi;
    }
    cout << maxChuVi;
    
    // Giải phóng bộ nhớ
    for (auto hinh : danhSachHinh) {
        delete hinh;
    }
}

HCN::HCN(double dai, double rong)
{
    _dai = dai;
    _rong = rong;
}

double HCN::DienTich() {
    return _dai * _rong;
}

double HCN::ChuVi() {
    return 2 * (_dai + _rong);
}

double HV::ChuVi() {
    return 4 * _dai;
}