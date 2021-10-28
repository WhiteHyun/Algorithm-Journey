# 23253번: 자료구조는 정말 최고야
# https://www.acmicpc.net/problem/23253
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    book_count, book_pile_count = map(int, read().split())  # 책의 개수와 책 더미의 수를 입력받음

    is_sorted = True
    for _ in range(book_pile_count):  # 책 더미의 수만큼 반복
        pile_height = int(read())  # 책 더미의 높이를 입력받음
        book_pile = list(map(int, read().split()))  # 책 더미를 입력받음

        for i in range(pile_height - 1):
            if book_pile[i] < book_pile[i + 1]:  # 책 더미가 정렬되지 않았을 경우
                is_sorted = False
                break

    if is_sorted:
        print("Yes")
    else:
        print("No")
