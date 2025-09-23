#include <iostream>
using namespace std;
long long phi(long long n) {
long long result = n;
for(long long i = 2; i * i <= n; ++i)
if(n % i == 0) {
while(n % i == 0)
n /= i;
result -= result / i;
}

if(n > 1)
result -= result / n;
return result;
}


int main() {
	long long t;
	cin >> t;
	while(t--)
	{
		long long x;
		cin >> x;
		cout << phi(x) << endl;
	}
	return 0;
}