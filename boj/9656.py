# 9656번: 돌 게임 2
# https://www.acmicpc.net/problem/9656

"""
사실상 홀짝수 문제!
"""

if __name__ == "__main__":
    stone = int(input())
    print("CY" if stone & 1 == 1 else "SK")
