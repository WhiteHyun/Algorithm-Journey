# 20363번: 당근 키우기
# https://www.acmicpc.net/problem/20363


if __name__ == "__main__":
    feed = tuple(map(int, input().split()))
    # 큰 값에 작은 값 넣어서 작아질 것 까지 더 넣음
    if feed[0] > feed[1]:
        print(feed[0] + feed[1]//10 + feed[1])
    else:
        print(feed[1] + feed[0]//10 + feed[0])
