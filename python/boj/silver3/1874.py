# 1874번: 스택 수열
# https://www.acmicpc.net/problem/1874
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    count = int(read())
    sequence = [int(read()) for _ in range(count)]
    result = ["+"]
    i = 2
    stack = [1]
    for number in sequence:  # 입력받은 수열값을 반복
        while i <= number:  # 숫자가 i보다 작으면
            # push하여 값을 넣음
            result.append("+")
            stack.append(i)
            i += 1
        if stack[-1] == number:  # 마지막 값이 숫자와 같아야한다.
            result.append("-")
            stack.pop()
        else:  # 아니면 수열을 만들 수 없음.
            print("NO")
            break
    else:
        print("\n".join(result))
