#include <iostream>
#include <queue>
using namespace std;

int directX[4] = { 0, 0, -1, 1 };
int directY[4] = { -1, 1, 0, 0 };

class Maze
{
private:
	char** maze;
	int** checking;
	int row;
	int col;
	queue<pair<int, int>>  q;
public:
	Maze(int row, int col);
	~Maze();
	void Escape();
	bool inRange(int x, int y);
	void printResult();
};

Maze::Maze(int row, int col)
{
	this->row = row;
	this->col = col;
	this->maze = new char* [row];
	this->checking = new int* [row];
	for (int i = 0; i < row; i++)
	{
		maze[i] = new char[col];
		checking[i] = new int [col];
		for (int j = 0; j < col; j++)
		{
			cin >> maze[i][j];
			checking[i][j] = 0;
		}
	}
}

Maze::~Maze()
{
	for (int i = 0; i < row; i++)
	{
		delete[] maze[i];
		delete[] checking[i];
	}
	delete[] maze;
	delete[] checking;
}

void Maze::Escape()
{
	int moveX = 0; int moveY = 0;
	q.push(make_pair(moveX, moveY));
	checking[moveX][moveY] = 1;

	while (!q.empty())
	{
		moveX = q.front().first;
		moveY = q.front().second;
		q.pop();

		if (moveX == row - 1 && moveY == col - 1)
			break;
		
		for (int i =0; i < 4; i++)
		{
			int nextX = moveX + directX[i];
			int nextY = moveY + directY[i];

			if (inRange(nextX, nextY) && checking[nextX][nextY] == 0 && maze[nextX][nextY] == '1')
			{
				checking[nextX][nextY] = checking[moveX][moveY] + 1;
				q.push(make_pair(nextX, nextY));
			}
		}
	}
}
bool Maze::inRange(int x, int y)
{
	if ((x >= 0 && x < row) && (y >= 0 && y < col))
	{
		return true;
	}
	else
	{
		return false;
	}
}

void Maze::printResult()
{
	cout << checking[row - 1][col - 1] << endl;
}
int main()
{
	int row, col;
	cin >> row >> col;
	Maze miro(row, col);
	miro.Escape();
	miro.printResult();
}