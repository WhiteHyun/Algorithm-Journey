#
#  14889번: 스타트와 링크
#  https://www.acmicpc.net/problem/14889
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/03/13.
#


from sys import stdin

read = stdin.readline
min_value = 2000


def get_team_value(index_list: list) -> int:
    """
    각 팀의 능력치 값을 리턴
    """
    value = 0
    for i in range(count >> 1 - 1):
        for j in range(i + 1, count >> 1):
            value += (
                matrix[index_list[i]][index_list[j]]
                + matrix[index_list[j]][index_list[i]]
            )
    return value


def back_tracking(index: int):
    global min_value
    if index == count >> 1:
        other_team_list = []
        for i in range(count):
            if not used[i]:
                other_team_list.append(i)
        team_value = get_team_value(team_list)
        other_team_value = get_team_value(other_team_list)
        difference = abs(team_value - other_team_value)
        # print(
        #     f"==================\n{team_list=}\n{other_team_list=}\n{difference=}\n=================="
        # )
        if difference < min_value:
            min_value = difference
        return

    for i in range(count):
        if not used[i] and team_list[index - 1] <= i:
            used[i] = True
            team_list[index] = i
            back_tracking(index + 1)
            team_list[index] = -1
            used[i] = False


if __name__ == "__main__":
    count = int(read())
    matrix = [list(map(int, read().split())) for _ in range(count)]
    used = [False] * count
    team_list = [-1] * (count >> 1)
    back_tracking(0)
    print(min_value)
