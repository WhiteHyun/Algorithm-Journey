# 20365번: 블로그2
# https://www.acmicpc.net/problem/20365


from sys import stdin
input = stdin.readline

if __name__ == "__main__":
    _ = input()
    paint_str = input().rstrip()

    blue = paint_str.split("R")
    red = paint_str.split("B")

    red_count = len(red) - red.count("")
    blue_count = len(blue) - blue.count("")
    print(min(red_count, blue_count)+1)
