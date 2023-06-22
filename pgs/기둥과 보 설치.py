#
#  기둥과 보 설치
#  https://school.programmers.co.kr/learn/courses/30/lessons/60061
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/19.
#


EMPTY_AREA = 0  # 없음
POST = 0  # 기둥
BEAM = 1  # 보
DESTROY = 0  # 삭제
PUT = 1  # 추가


def toggle_structure(structure_list, x, y, structure_type):
    structure_list[x][y] ^= 1 << structure_type


def exists(structure_list, x, y, structure_type) -> bool:
    return structure_list[x][y] & 1 << structure_type


def installable(structure_list, x, y, structure_type) -> bool:
    # 기둥 설치 가능 여부
    if structure_type == POST:
        # x가 0이면 성공
        if x == 0:
            return True

        # 아래가 기둥이면 성공
        if exists(structure_list, x - 1, y, POST):
            return True

        # 내 좌표에 보가 있으면 성공
        if exists(structure_list, x, y, BEAM):
            return True

        # 내 왼쪽에 보가 있으면 성공
        if y > 0 and exists(structure_list, x, y - 1, BEAM):
            return True

        return False
    # 보 설치 가능 여부
    else:
        # 최대 접근 가능한 좌표 길이
        n = len(structure_list) - 1

        # 내 밑에 기둥이 있으면 성공
        if x > 0 and exists(structure_list, x - 1, y, POST):
            return True

        # 내 오른쪽 밑에 기둥이 존재하면 성공
        if x > 0 and y < n and exists(structure_list, x - 1, y + 1, POST):
            return True

        # 양 쪽에 보가 존재하면 성공
        if (
            y > 0
            and y < n
            and exists(structure_list, x, y - 1, BEAM)
            and exists(structure_list, x, y + 1, BEAM)
        ):
            return True
        return False


# 벽면을 벗어나게 기둥, 보를 설치하는 경우는 없습니다.
# 바닥에 보를 설치 하는 경우는 없습니다.
# build_frame에서 위 조건식이 주어지지 않는다고 확실하게 말하지는 않았지만
# 위 조건식에 대해 들어오지 않는다고 가정하고 구현할 예정
def solution(n, build_frame):
    structure_list = [[EMPTY_AREA] * (n + 1) for _ in range(n + 1)]
    blueprint = set()

    for command_list in build_frame:
        y, x, structure_type, command_type = command_list

        if command_type == PUT and installable(structure_list, x, y, structure_type):
            blueprint.add((y, x, structure_type))
            toggle_structure(structure_list, x, y, structure_type)
        elif command_type == DESTROY:
            # 선 제거
            blueprint.remove((y, x, structure_type))
            toggle_structure(structure_list, x, y, structure_type)

            # 후 체크
            check_list = (
                [
                    (x, y - 1, BEAM),
                    (x, y, POST),
                    (x, y + 1, POST),
                    (x, y + 1, BEAM),
                ]
                if structure_type == BEAM
                else [(x + 1, y - 1, BEAM), (x + 1, y, POST), (x + 1, y, BEAM)]
            )

            for element in check_list:
                pos_x, pos_y, material = element
                # skip when index out of range
                if pos_x < 0 or pos_x > n + 1 or pos_y < 0 or pos_y > n + 1:
                    continue
                # 블루프린트에 존재하지 않으면 조건 처리 무시
                if (pos_y, pos_x, material) not in blueprint:
                    continue
                if not installable(structure_list, pos_x, pos_y, material):
                    # 제거 했던 것 다시 추가하고 마무리
                    blueprint.add((y, x, structure_type))
                    toggle_structure(structure_list, x, y, structure_type)
                    break

    return list(map(list, sorted(blueprint)))


if __name__ == "__main__":
    print(
        solution(
            5,
            [
                [1, 0, 0, 1],
                [1, 1, 1, 1],
                [2, 1, 0, 1],
                [2, 2, 1, 1],
                [5, 0, 0, 1],
                [5, 1, 0, 1],
                [4, 2, 1, 1],
                [3, 2, 1, 1],
            ],
        )
        == [
            [1, 0, 0],
            [1, 1, 1],
            [2, 1, 0],
            [2, 2, 1],
            [3, 2, 1],
            [4, 2, 1],
            [5, 0, 0],
            [5, 1, 0],
        ]
    )
    print(
        solution(
            5,
            [
                [0, 0, 0, 1],
                [2, 0, 0, 1],
                [4, 0, 0, 1],
                [0, 1, 1, 1],
                [1, 1, 1, 1],
                [2, 1, 1, 1],
                [3, 1, 1, 1],
                [2, 0, 0, 0],
                [1, 1, 1, 0],
                [2, 2, 0, 1],
            ],
        )
        == [[0, 0, 0], [0, 1, 1], [1, 1, 1], [2, 1, 1], [3, 1, 1], [4, 0, 0]]
    )
    print(
        solution(
            4,
            [
                [0, 0, POST, PUT],
                [2, 0, POST, PUT],
                [0, 1, BEAM, PUT],
                [1, 1, BEAM, PUT],
                [1, 1, POST, PUT],
                [1, 2, BEAM, PUT],
                [2, 1, POST, PUT],
                [1, 2, POST, PUT],
                [0, 3, BEAM, PUT],
                [0, 2, POST, PUT],
                [0, 1, POST, PUT],
                [0, 2, POST, PUT],
                [1, 1, POST, DESTROY],
                [3, 0, POST, PUT],
                [2, 1, BEAM, PUT],
                [2, 0, POST, DESTROY],
                [1, 3, POST, PUT],
                [0, 4, BEAM, PUT],
                [1, 3, POST, DESTROY],
                [1, 4, BEAM, PUT],
                [3, 1, POST, PUT],
                [3, 2, POST, PUT],
                [3, 3, POST, PUT],
                [3, 3, POST, DESTROY],
                [3, 3, POST, PUT],
                [2, 4, BEAM, PUT],
                [3, 0, POST, DESTROY],
            ],
        )
    )
    print(
        solution(
            2,
            [
                [0, 0, POST, PUT],
                [0, 1, BEAM, PUT],
                [1, 1, POST, PUT],
                [0, 2, BEAM, PUT],
                [0, 2, BEAM, DESTROY],
                [2, 0, POST, PUT],
                [2, 1, POST, PUT],
                [1, 2, BEAM, PUT],
                [0, 2, BEAM, PUT],
                [0, 1, POST, PUT],
                [1, 1, POST, DESTROY],
                [0, 1, BEAM, DESTROY],
                [0, 2, POST, PUT],
                [0, 2, POST, DESTROY],
                [2, 2, BEAM, PUT],
                [2, 2, BEAM, DESTROY],
            ],
        )
    )
