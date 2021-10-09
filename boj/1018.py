# 1018번: 체스판 다시 칠하기
# https://www.acmicpc.net/problem/1018


def min_paint(chess):
    count_BW = 0
    count_WB = 0

    for i in range(8):
        for j in range(8):
            # 각 행과 열의 인덱스 합이 홀짝이냐에 따라 각각의 체스판 색으로 나뉜다. (0, 0), (0, 1), (0, 2) 각각 짝 홀 짝...
            if not (i+j) & 1 and chess[i][j] == "W":
                count_BW += 1
            elif not (i+j) & 1 and chess[i][j] == "B":
                count_WB += 1
            elif (i+j) & 1 and chess[i][j] == "W":
                count_WB += 1
            else:
                count_BW += 1

    return min(count_WB, count_BW)


if __name__ == "__main__":
    width, height = map(int, input().split())
    chess_list = [input() for _ in range(width)]

    min_count = []
    for i in range(width-7):
        for j in range(height-7):
            temp_list = list(map(lambda x: x[j:j+8], chess_list[i:i+8]))
            min_count.append(
                min_paint(temp_list))
    print(min(min_count))
