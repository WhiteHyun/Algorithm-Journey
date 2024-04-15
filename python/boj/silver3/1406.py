#
#  1406번: 에디터
#  https://www.acmicpc.net/problem/1406
#  Version: Python 3.9.7
#
#  Created by WhiteHyun on 2021/12/24.
#


from sys import stdin

read = stdin.readline


if __name__ == "__main__":
    linked_list = list(read().rstrip())
    cursor_stack = list()

    for _ in range(int(read())):  # 입력 값만큼 반복
        command, *args = read().split()  # 명령어 입력
        if command == "L":  # 왼쪽 커서 이동
            if linked_list:
                cursor_stack.append(linked_list.pop())
        elif command == "D":  # 오른쪽 커서 이동
            if cursor_stack:
                linked_list.append(cursor_stack.pop())
        elif command == "B":  # 삭제
            if linked_list:
                linked_list.pop()
        elif command == "P":  # 값 푸시
            linked_list.append(args[0])

    print("".join(linked_list + cursor_stack[::-1]))
