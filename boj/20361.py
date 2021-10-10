# 20361번: 일우는 야바위꾼
# https://www.acmicpc.net/problem/20361


if __name__ == "__main__":
    cup_count, hide_pos, count = map(int, input().split())
    for _ in range(count):
        cup1, cup2 = map(int, input().split())
        # 숨겨져있는 컵이 입력받은 값에 있으면 다른 값이 숨겨져있는 컵임.
        if cup1 == hide_pos:
            hide_pos = cup2
        elif cup2 == hide_pos:
            hide_pos = cup1
    print(hide_pos)
