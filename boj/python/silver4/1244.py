# 1244번: 스위치 켜고 끄기
# https://www.acmicpc.net/problem/1244
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    button_count = int(read())
    button_list = list(map(int, read().split()))
    student_count = int(read())
    for _ in range(student_count):
        gender, received_number = map(int, read().split())
        index = received_number - 1
        if gender == 1:  # 남학생인 경우
            while index <= button_count - 1:  # received_number의 배수만큼 값을 바꾸는 구간
                button_list[index] = 1 if button_list[index] == 0 else 0
                index += received_number
        else:  # 여학생인 경우

            button_list[index] = 1 if button_list[index] == 0 else 0  # 첫 숫자를 우선적으로 바꿈
            i = 1  # 대칭 인덱스
            while (
                index + i < button_count
                and index - i >= 0
                and button_list[index - i] == button_list[index + i]
            ):
                button_list[index - i] = 1 if button_list[index - i] == 0 else 0
                button_list[index + i] = 1 if button_list[index + i] == 0 else 0
                i += 1
    for i in range(button_count):
        print(button_list[i], end=" ")
        if i % 20 == 19:
            print()
