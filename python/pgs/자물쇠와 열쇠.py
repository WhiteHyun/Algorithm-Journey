#
#  자물쇠와 열쇠
#  https://school.programmers.co.kr/learn/courses/30/lessons/60059
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/11.
#


def check(array: list, offset: int, lock_size: int) -> bool:
    for i in range(lock_size):
        for j in range(lock_size):
            if array[offset + i][offset + j] != 1:
                return False
    return True


def solution(key: list, lock: list):
    offset = len(key) - 1

    for row in range(offset + len(lock)):
        for col in range(offset + len(lock)):
            for rotation in range(4):
                # == lock setting ==
                array = [[0] * 58 for _ in range(58)]
                for i in range(len(lock)):
                    for j in range(len(lock)):
                        array[offset + i][offset + j] = lock[i][j]

                # == key matching ==
                for i in range(len(key)):
                    for j in range(len(key)):
                        # 0 degree
                        if rotation == 0:
                            array[row + i][col + j] += key[i][j]
                        # 90 degree
                        elif rotation == 1:
                            array[row + i][col + j] += key[offset - j][i]
                        # 180 degree
                        elif rotation == 2:
                            array[row + i][col + j] += key[offset - i][offset - j]
                        # 270 degree
                        else:
                            array[row + i][col + j] += key[j][offset - i]
                if check(array, offset, len(lock)):
                    return True

    return False
