# 18231번: 파괴된 도시
# https://www.acmicpc.net/problem/18231
# Version: Python 3.8.9


from sys import stdin

read = stdin.readline


def city_input(road_count: int) -> dict:
    road_dict = {}
    for _ in range(road_count):
        city1, city2 = map(int, read().split())

        if city1 not in road_dict:
            road_dict[city1] = []
        road_dict[city1].append(city2)

        if city2 not in road_dict:
            road_dict[city2] = []
        road_dict[city2].append(city1)

    return road_dict


def destroyed_city_input() -> list:
    read()
    destroyed_city_list = sorted(list(map(int, read().split())))
    return destroyed_city_list


if __name__ == "__main__":
    _, road_count = map(int, read().split())

    city_dict = city_input(road_count)
    destroyed_cities = destroyed_city_input()
    correct_cities = destroyed_cities.copy()
    bomb_cities = []
    index = 0
    for city in destroyed_cities:
        if city not in city_dict:  # 혼자 터진 경우
            bomb_cities.append(city)
            correct_cities[index] = -1
        elif all(x in destroyed_cities for x in city_dict[city]):  # 터졌을 때 옆 주변이 있는 경우
            bomb_cities.append(city)
            for x in city_dict[city]:
                correct_cities[destroyed_cities.index(x)] = -1
            correct_cities[index] = -1
        index += 1
    if all(x == -1 for x in correct_cities):
        print(" ".join(map(str, bomb_cities)))
    else:
        print(-1)

