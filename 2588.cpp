#include <iostream>
using namespace std;

int main()
{
    int multiply1, multiply2;
    cin >> multiply1 >> multiply2;
    cout << multiply1 * ((multiply2 % 100) % 10) << endl;
    cout << multiply1 * ((multiply2 % 100) / 10) << endl;
    cout << multiply1 * (multiply2 / 100) << endl;
    cout << multiply1 * multiply2 << endl;
}