#
#  1924번: 2007년
#  https://www.acmicpc.net/problem/1924
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/07.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    day_of_the_week = ("MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN")
    month, day = map(int, read().split())

    count_day = 0
    for temp_moonth in range(1, month):
        # 1, 3, 5, 7, 8, 10, 12월
        if (temp_moonth & 1 == 1 and temp_moonth <= 7) or (
            temp_moonth & 1 == 0 and temp_moonth > 7
        ):
            count_day += 31
        elif (
            temp_moonth == 4
            or temp_moonth == 6
            or temp_moonth == 9
            or temp_moonth == 11
        ):
            count_day += 30
        elif temp_moonth == 2:
            count_day += 28
        temp_moonth -= 1

    # 총 일자
    count_day += day
    print(day_of_the_week[count_day % 7 - 1])

