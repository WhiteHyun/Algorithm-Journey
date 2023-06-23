#
#  베스트앨범
#  https://school.programmers.co.kr/learn/courses/30/lessons/42579
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/23.
#


def solution(genres: list, plays: list) -> list:
    genre_dict = {genre: [] for genre in set(genres)}
    for i in range(len(genres)):
        genre_dict[genres[i]].append((plays[i], i))  # 재생 횟수, 고유 번호 저장

    for key in genre_dict:
        genre_dict[key] = sorted(genre_dict[key], key=lambda x: (-x[0], x[1]))

    answer = []
    for key in sorted(
        genre_dict,
        key=lambda x: (-sum(map(lambda y: y[0], genre_dict[x])), genre_dict[x][0][1]),
    ):
        for element in genre_dict[key][:2]:
            answer.append(element[1])
    return answer
