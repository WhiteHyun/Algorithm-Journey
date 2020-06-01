#include <iostream>
using namespace std;

int main()
{
    int basket[2][2];
    for (int i = 0; i < 2; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            cin >> basket[i][j];
        }
    }
    int answer = (basket[0][0] + basket[1][1]) < (basket[0][1] + basket[1][0]) ? (basket[0][0] + basket[1][1]) : (basket[0][1] + basket[1][0]);
    cout << answer << endl;
    return 0;
}