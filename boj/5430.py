# 5430번: AC
# https://www.acmicpc.net/problem/5430


from sys import stdin
input = stdin.readline

if __name__ == "__main__":
    count = int(input())  # 연산자의 개수를 입력받음

    for _ in range(count):

        opcodes = input().rstrip()  # 개행문자 제거

        length = int(input())
        if length:  # 만약 피연산자의 크기가 0이 아닌 경우
            operand = input().rstrip()[1:-1].split(",")  # 피연산자 입력
        else:  # 피연산자의 크기가 0인 경우
            input()  # 입력값 버림
            operand = []

        reverse = False
        error = False

        """opcodes: "RDDRD"
        operand = ["1", "2", "3", "4"]
        """

        start = 0
        end = -1

        for operator in opcodes:
            if operator == "R":
                reverse = not reverse
            else:
                if start - end > length:  # D를 초과하여 입력받은 경우
                    error = True
                    break
                elif reverse:
                    end -= 1
                else:
                    start += 1

        if error:
            print("error")
        else:
            if not reverse:
                answer = ','.join(
                    operand[start:end+1]) if end != -1 else ','.join(operand[start:])
            else:
                answer = ",".join(
                    operand[end:start-1:-1]) if start else ",".join(operand[end::-1])

            print(f"[{answer}]")
