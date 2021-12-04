# 1100번: 하얀 칸
# https://www.acmicpc.net/problem/1100
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    chess_board = [list(read().rstrip()) for _ in range(8)]
    count = 0
    for i in range(8):
        for j in range(8):
            if i + j & 1 == 0 and chess_board[i][j] == "F":
                count += 1

    print(count)
