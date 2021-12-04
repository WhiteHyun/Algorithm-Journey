# 10039번: 평균 점수
# https://www.acmicpc.net/problem/10039
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    total_score = 0
    for _ in range(5):
        if (score := int(read())) >= 40:
            total_score += score
        else:
            total_score += 40
    print(total_score // 5)

