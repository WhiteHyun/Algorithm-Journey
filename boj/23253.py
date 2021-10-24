# 23253번: 자료구조는 정말 최고야
# https://www.acmicpc.net/problem/23253


from sys import stdin
from typing import List
input = stdin.readline


class Books:
    """
    하나의 더미 내의 책들을 나타냅니다.

    Properties
    ----------

    height: int
        책들이 얼만큼 쌓여져있는지를 나타냅니다. 즉 높이인거죠.

    stack_of_books: List[int]
        책들이 쌓인 형태를 리스트로 표현했습니다. 각 책들은 int형이니까요 :)

    """

    def __init__(self, height: int, stack_books: List[int]) -> None:
        self.height: int = height
        self.stack_of_books: List[int] = stack_books


class PileOfBooks:
    """
    책 전체 더미를 나타내는 클래스

    Properties
    ----------

    pile_count: int
        책더미의 개수를 나타냅니다.

    books_count: int
        모든 책들의 개수입니다.

    books: List[Books]
        각 더미별 쌓여있는 책들을 나타냅니다. books의 길이는 `pile_count`입니다.
    """

    def __init__(self, stacks_count: int, books_count: int, books: List[Books]) -> None:
        self.__pile_count: int = stacks_count
        self.__books_count: int = books_count
        self.__books: List[Books] = books

    def can_take_it_order(self) -> bool:
        books_height: list = list(
            map(lambda books: books.height - 1, self.__books))

        for number in range(1, self.__books_count+1):  # 1번부터 n번책까지 순서대로 진행

            gotcha = False  # 책을 찾았는지 알려주는 변수

            for i in range(self.__pile_count):  # 각 더미들마다 확인
                # 위에서부터 순서대로 확인하는데, 해당 책을 발견했을 경우
                if books_height[i] != -1 and self.__books[i].stack_of_books[books_height[i]] == number:
                    gotcha = True  # 찾았다!
                    books_height[i] -= 1  # 찾았으므로 더미의 높이를 한 칸 줄여서 봄
                    break
            if not gotcha:  # 만약 못찾았으면 던져야죠 뭐..
                return False

        return True


def books_input(stack_count, books_count) -> PileOfBooks:
    books = []
    for _ in range(stack_count):
        height = int(input())  # 쌓여있는 책의 높이
        stack_books = list(map(int, input().split()))  # 책들이 어떻게 쌓여있는지 입력
        books.append(Books(height, stack_books))  # Books로 객체화

    return PileOfBooks(stack_count, books_count, books)


if __name__ == "__main__":
    books_count, stack_count = map(int, input().split())
    pile_of_books = books_input(stack_count, books_count)
    if pile_of_books.can_take_it_order():
        print("Yes")
    else:
        print("No")
