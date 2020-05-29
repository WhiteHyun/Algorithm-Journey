#include <iostream>

using namespace std;

int main()
{
    int day = 0, count = 0;
    int car[5];
    cin >> day;
    for (int i = 0; i < 5; ++i)
    {
        cin >> car[i];
        if (car[i] == day)
            count++;
    }
    cout << count << endl;
}