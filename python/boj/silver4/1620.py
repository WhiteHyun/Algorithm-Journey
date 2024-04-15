#
#  1620번: 나는야 포켓몬 마스터 이다솜
#  https://www.acmicpc.net/problem/1620
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2022/01/02.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    n, m = map(int, read().split())
    pokemon_dict = {}
    for i in range(1, n + 1):
        pokemon_dict[str(i)] = read().rstrip()
        pokemon_dict[pokemon_dict[str(i)]] = i
    for _ in range(m):
        command = read().rstrip()
        print(pokemon_dict[command])
