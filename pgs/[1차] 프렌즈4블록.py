#
#  [1차] 프렌즈4블록
#  https://school.programmers.co.kr/learn/courses/30/lessons/17679
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


def solution(m, n, board):
    board = list(map(list, board))
    escape_flag = True
    count = 0
    while escape_flag:
        escape_flag = False
        remove_tiles = [[False] * n for _ in range(m)]
        # 제거해야할 타일 찾기
        for i in range(m - 1):
            for j in range(n - 1):
                if (
                    board[i][j] is not None
                    and board[i][j]
                    == board[i][j + 1]
                    == board[i + 1][j]
                    == board[i + 1][j + 1]
                ):
                    remove_tiles[i][j] = True
                    remove_tiles[i][j + 1] = True
                    remove_tiles[i + 1][j] = True
                    remove_tiles[i + 1][j + 1] = True
                    escape_flag = True
        # 타일 제거하고 위에 칸 당겨오기
        for i in range(m):
            for j in range(n):
                if remove_tiles[i][j]:
                    count += 1
                    for k in range(i, 0, -1):
                        board[k][j] = board[k - 1][j]
                    board[0][j] = None
    return count
