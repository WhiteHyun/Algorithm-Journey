# 1697번: 숨바꼭질
# https://www.acmicpc.net/problem/1697
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


def find_brother_count(me: int, brother: int) -> int:
    if me >= brother:
        return me - brother
    if brother == 1:
        return 1

    if brother & 1:  # 동생의 위치가 홀수인 경우
        # 이전과 다음 위치에서 동생의 위치로 이동하는 것이므로 각 위치 가운데 최소가 되는 값 + 1을 return
        return 1 + min(
            find_brother_count(me, brother - 1), find_brother_count(me, brother + 1)
        )
    # 동생의 위치가 2로 나누어 떨어질 때
    # 수빈이 순간이동으로 이동했을 때와 한 칸씩 이동한 시간 중 최소가 되는 값을 return
    return min(brother - me, 1 + find_brother_count(me, brother >> 1))


if __name__ == "__main__":
    # 나의 위치, 동생의 위치
    my_pos, bro_pos = map(int, read().split())
    print(find_brother_count(me=my_pos, brother=bro_pos))
