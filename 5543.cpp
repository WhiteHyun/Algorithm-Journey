#include <iostream>

using namespace std;

int main()
{
    int a, b, c, d, e, min;
    cin >> a >> b >> c >> d >> e;
    min = a > b ? b : a;
    min = min > c ? c : min;
    min = d > e ? min + e - 50 : min + d - 50;
    cout << min << endl;
}