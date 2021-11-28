# 1302번: 베스트셀러
# https://www.acmicpc.net/problem/1302
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    book_dict = {}
    for _ in range(count):
        book = read().rstrip()
        if book not in book_dict:
            book_dict[book] = 1
        else:
            book_dict[book] += 1
    # 숫자로 역정렬하면서 알파벳순으로 정렬
    book_list = sorted(book_dict.items(), key=lambda x: (-x[1], x[0]))
    print(book_list[0][0])
