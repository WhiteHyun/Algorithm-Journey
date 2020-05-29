#include <iostream>

using namespace std;

int matrix[1000] = {
    0,
};

int tile(int num)
{
    if (matrix[num] != 0)
        return matrix[num];
    else if (num == 0)
        return matrix[num] = 1;
    else if (num == 1)
        return matrix[num] = 2;
    return matrix[num] = (tile(num - 1) + tile(num - 2)) % 10007;
}

int main()
{
    int n; //2 x n 타일
    cin >> n;
    n--;
    cout << tile(n) << endl;
}