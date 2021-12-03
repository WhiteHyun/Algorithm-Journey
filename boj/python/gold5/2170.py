# 2170번: 선 긋기
# https://www.acmicpc.net/problem/2170
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    lines = sorted(
        [tuple(map(int, read().split())) for _ in range(count)],
        key=lambda x: (-x[0], -x[1]),
    )
    sum_lines = 0  # 선들의 합

    while lines:
        line = lines.pop()  # 연결된 선을 만들어줄 변수
        while lines and lines[-1][0] <= line[1]:  # 선이 겹친 경우
            if (other_line := lines.pop())[1] > line[1]:
                line = (line[0], other_line[1])

        sum_lines += line[1] - line[0]

    print(sum_lines)
