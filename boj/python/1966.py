# 1966번: 프린터 큐
# https://www.acmicpc.net/problem/1966
# Version: Python 3.8.12


from collections import deque
from sys import stdin


read = stdin.readline

if __name__ == "__main__":
    case_count = int(read())

    for _ in range(case_count):
        doc_count, want_print = map(int, read().split())
        print_queue = deque(map(int, read().split()))
        count = 0

        while True:
            if want_print == 0:
                if print_queue[0] == max(print_queue):
                    count += 1
                    print(count)
                    break
                else:
                    print_queue.append(print_queue.popleft())
                    want_print = len(print_queue) - 1

            else:
                if print_queue[0] == max(print_queue):
                    print_queue.popleft()
                    count += 1
                    want_print -= 1
                else:
                    print_queue.append(print_queue.popleft())
                    want_print -= 1
