# 1697번: 숨바꼭질
# https://www.acmicpc.net/problem/1697
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    # 나의 위치, 동생의 위치
    my_pos, bro_pos = map(int, read().split())
    bfs = [my_pos]
    visited_dict = {}
    count = 0  # 이동 횟수
    while bfs:
        bfs_next = []  # 다음에 들어갈 bfs 리스트
        for i in bfs:
            if i == bro_pos:
                print(count)
                break
            if (number := i + 1) <= 100000 and number not in visited_dict:
                bfs_next.append(number)
            if (number := i - 1) >= 0 and number not in visited_dict:
                bfs_next.append(number)
            if (number := i << 1) <= 100000 and number not in visited_dict:
                bfs_next.append(number)
            visited_dict[i] = bfs_next
        else:
            count += 1
            bfs = bfs_next
            continue

        break
