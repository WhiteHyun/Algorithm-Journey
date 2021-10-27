# 11723번: 집합
# https://www.acmicpc.net/problem/11723
# Version: Python 3.9.7


from sys import stdin
from enum import Enum
from typing import Generator

_input = stdin.readline


class Opcode(Enum):
    """
    add x: S에 x를 추가한다. (1 ≤ x ≤ 20) S에 x가 이미 있는 경우에는 연산을 무시한다.
    remove x: S에서 x를 제거한다. (1 ≤ x ≤ 20) S에 x가 없는 경우에는 연산을 무시한다.
    check x: S에 x가 있으면 1을, 없으면 0을 출력한다. (1 ≤ x ≤ 20)
    toggle x: S에 x가 있으면 x를 제거하고, 없으면 x를 추가한다. (1 ≤ x ≤ 20)
    all: S를 {1, 2, ..., 20} 으로 바꾼다.
    empty: S를 공집합으로 바꾼다.
    """

    ADD = "add"
    REMOVE = "remove"
    CHECK = "check"
    TOGGLE = "toggle"
    ALL = "all"
    EMPTY = "empty"


def process_input_generator(count: int) -> Generator[str, int, None]:
    """
    파라미터의 수만큼 명령여와 숫자를 입력받는 제네레이터입니다.
    """
    for _ in range(count):
        opcode_number = _input().split()
        if len(opcode_number) == 1:
            opcode_number.append(-1)
        yield opcode_number


def process(
    var_set: list[bool], opcode: Opcode, number: int
) -> tuple[bool, list[bool]]:
    """
    명령어에 따라 집합을 처리합니다.
    """
    if Opcode.ADD == opcode:
        var_set[number - 1] = True
        return None, var_set
    elif Opcode.REMOVE == opcode:
        var_set[number - 1] = False
        return None, var_set
    elif Opcode.CHECK == opcode:
        return var_set[number - 1], var_set
    elif Opcode.TOGGLE == opcode:
        var_set[number - 1] = False if var_set[number - 1] else True
        return None, var_set
    elif Opcode.ALL == opcode:
        return None, [True] * 20
    else:  # EMPTY
        return None, [False] * 20


if __name__ == "__main__":
    COUNT = int(_input())
    _set = [False] * 20
    for opcode, number in process_input_generator(COUNT):
        check, _set = process(_set, Opcode(opcode), int(number))
        if check is not None:
            print("1" if check else "0")

