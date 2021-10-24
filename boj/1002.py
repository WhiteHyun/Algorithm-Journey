# 1002번: 터렛
# https://www.acmicpc.net/problem/1002


from sys import stdin
from typing import Tuple
input = stdin.readline


class Turret:
    """
    터렛, 사실상 원이라 봐도 무방하다.
    """

    def __init__(self, x: int, y: int, radius: int) -> None:
        self.x = x
        self.y = y
        self.radius = radius

    def __eq__(self, o: object) -> bool:
        return self.radius == o.radius and self.x == o.x and self.y == o.y


def process_input() -> Tuple[Turret]:
    x1, y1, r1, x2, y2, r2 = map(int, input().split())
    return Turret(x1, y1, r1), Turret(x2, y2, r2)


def process(turret1: Turret, turret2: Turret) -> int:
    if turret1.radius > turret2.radius:
        turret1, turret2 = turret2, turret1  # 거리가 작은 터렛을 1로 지정, 계산을 쉽게 하기 위함

    if turret1 == turret2:  # 서로 같으면
        return -1
    elif turret1.x == turret2.x and turret1.y == turret2.y:  # 서로 좌표가 동일하지만 거리가 다른 경우
        return 0
    # 여기서부터는 서로 좌표가 다름
    turret_distance = (turret2.x - turret1.x) ** 2 + \
        (turret2.y - turret1.y) ** 2

    # 외접일 때
    if turret_distance > turret2.radius ** 2:
        radius_distance = (turret1.radius + turret2.radius) ** 2
        if turret_distance == radius_distance:  # 외부접선인 경우
            return 1
        elif turret_distance < radius_distance:  # 두 접점이 되는 경우
            return 2
        elif turret_distance > radius_distance:  # 서로 거리가 먼 경우
            return 0
    # 내접일 때
    else:
        nested_distance = (turret2.radius - turret1.radius) ** 2

        if turret_distance == nested_distance:  # 내부접선인 경우
            return 1
        elif turret_distance > nested_distance:  # 접점이 되는 경우
            return 2
        else:
            return 0


if __name__ == "__main__":
    """
    여러 경우의 수가 발생.
    1. 터렛의 접점이 두 개인 경우
    2. 터렛의 범위가 딱 한 쪽만 접해있는 경우
    3. 터렛의 범위가 서로 떨어져있는 경우
    4. 터렛의 범위가 무한대인 경우

    ------------------------------
    1. 터렛의 접점이 두 개인 경우
        - 그냥 접점 2개인 원을 생각하면 됨

    2. 터렛의 범위가 딱 한 쪽만 접해있는 경우
        - 내접해있는가
        - 외접해있는가

    3. 터렛의 범위가 서로 떨어져있는 경우
        - nested되어있는가
        - 아예 다른 곳에 있는가

    4. 터렛의 범위가 무한대인 경우
        - 같은가
    """
    count = int(input())  # 테스트 케이스의 개수
    for _ in range(count):
        person1, person2 = process_input()
        print(process(person1, person2))
