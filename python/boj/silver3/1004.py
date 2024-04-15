# 1004번: 어린 왕자
# https://www.acmicpc.net/problem/1004

from sys import stdin
from typing import Generator, Tuple
input = stdin.readline


class Point:
    def __init__(self, x: int, y: int) -> None:
        self.x = x
        self.y = y


class Circle:

    def __init__(self, x: int, y: int, radius: int) -> None:
        self.pos = Point(x, y)
        self.radius = radius

    def distance_pow(self, point: Point) -> int:
        return (self.pos.x - point.x) ** 2 + (self.pos.y - point.y) ** 2


def start_end_point_input() -> Tuple[Point]:
    start_x, start_y, end_x, end_y = map(int, input().split())
    return Point(start_x, start_y), Point(end_x, end_y)


def circle_input_generator(count: int) -> Generator[Circle, None, None]:
    for _ in range(count):
        x, y, radius = map(int, input().split())
        yield Circle(x, y, radius)


if __name__ == "__main__":
    count = int(input())

    for _ in range(count):  # 테스트 케이스 만큼 반복
        start_pos, end_pos = start_end_point_input()  # 출발점과 도착점 입력을 받는다.
        visit_circle_count = 0
        circle_count = int(input())
        # 각 행성계를 입력받은 것을 제네레이터로 처리
        for circle in circle_input_generator(circle_count):
            # 점 사이의 거리 계산하여 행성계 내부에 있는 경우 카운트
            if circle.distance_pow(start_pos) <= circle.radius ** 2 and circle.distance_pow(end_pos) <= circle.radius ** 2:
                pass
            elif circle.distance_pow(start_pos) <= circle.radius ** 2:
                visit_circle_count += 1
            elif circle.distance_pow(end_pos) <= circle.radius ** 2:
                visit_circle_count += 1
        print(visit_circle_count)
