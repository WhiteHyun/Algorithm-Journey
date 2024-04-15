# 9498번: 시험 성적
# https://www.acmicpc.net/problem/9498
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    if 90 <= (score := int(read())) <= 100:
        print("A")
    elif 80 <= score < 90:
        print("B")
    elif 70 <= score < 80:
        print("C")
    elif 60 <= score < 70:
        print("D")
    else:
        print("F")
