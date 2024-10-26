#include<iostream>
using namespace std;
bool KTSNT(int x)
{
	if (x < 2)
		return false;
	for (int i = 2; i <= x / 2; i++)
		if(x % i == 0)
			return false;
	return true;
}
int main() 
{
    int n;
    cin >> n;
    if (n < 2)
    {
        cout << -1;
        return 0;
    }
    for (int i = 2; i <= n; i++)
    {
        if (KTSNT(i))
        {
            cout << i;
            cout << " ";
        }
    }
    return 0;
}
    
