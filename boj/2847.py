# 2847번: 게임을 만든 동준이
# https://www.acmicpc.net/problem/2847

if __name__ == "__main__":
    stage_count = int(input())

    stage_list = []
    for i in range(stage_count):
        stage_list.append(int(input()))

    count = 0
    for i in range(len(stage_list)-1, 0, -1):
        if stage_list[i-1] >= stage_list[i]:
            count += stage_list[i-1] - (stage_list[i] - 1)
            stage_list[i-1] = stage_list[i] - 1
    print(count)
