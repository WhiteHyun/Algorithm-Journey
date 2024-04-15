#
#  14583번: 이음줄
#  https://www.acmicpc.net/problem/14583
#  Version: Python 3.8.12
#
#  Created by WhiteHyun on 2021/12/16.
#


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    width, height = map(float, read().split())
    diagonal = (width ** 2 + height ** 2) ** 0.5
    x = diagonal * height / (width + diagonal)
    height_minus_x = height - x
    x_diagonal = (height_minus_x ** 2 + width ** 2) ** 0.5
    answer_area = x * width / 2
    answer_width = x_diagonal / 2
    answer_height = answer_area / answer_width
    print(round(answer_width, 2), round(answer_height, 2))
