#
#  11047번: 동전 0
#  https://www.acmicpc.net/problem/11047
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2022/01/06.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    coin_count, goal_won = map(int, read().split())
    coin_list = [int(read()) for _ in range(coin_count)]
    count = 0
    for coin in reversed(coin_list):
        count += goal_won // coin
        goal_won %= coin
    print(count)
