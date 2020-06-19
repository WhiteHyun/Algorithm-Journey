#include <iostream>
using namespace std;
/*
 * 20-06-19 22:17
 * 피보나치 수열, 다이나믹 프로그래밍으로 구현
 * 시도 횟수: 1
 * 정답
 */
int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    long long n[10001] = {
        0,
    };
    int count;
    n[0] = 0;
    n[1] = 1;
    for (int i = 2; i <= 10000; i++)
    {
        n[i] = n[i - 1] + n[i - 2];
    }
    cin >> count;
    cout << n[count];
}