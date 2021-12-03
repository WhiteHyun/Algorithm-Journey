# 2667번: 단지번호붙이기
# https://www.acmicpc.net/problem/2667
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    square_map = [list(map(int, read().rstrip())) for _ in range(count)]
    complex_list = []
    for i in range(count):
        for j in range(count):
            if square_map[i][j] == 0:  # 방문했거나 단지가 없는 경우
                continue

            dfs = [(i, j)]
            complex_count = 0
            while dfs:
                x, y = dfs.pop()
                square_map[x][y] = 0
                # 상, 하, 좌, 우 인접한 단지를 추가한다.
                if x > 0 and square_map[x - 1][y] == 1 and (x - 1, y) not in dfs:
                    dfs.append((x - 1, y))
                if (
                    x < count - 1
                    and square_map[x + 1][y] == 1
                    and (x + 1, y) not in dfs
                ):
                    dfs.append((x + 1, y))
                if y > 0 and square_map[x][y - 1] == 1 and (x, y - 1) not in dfs:
                    dfs.append((x, y - 1))
                if (
                    y < count - 1
                    and square_map[x][y + 1] == 1
                    and (x, y + 1) not in dfs
                ):
                    dfs.append((x, y + 1))
                complex_count += 1

            complex_list.append(complex_count)
    print(len(complex_list))
    for number in sorted(complex_list):
        print(number)

