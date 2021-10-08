# 2609번: 최대공약수와 최소공배수
# https://www.acmicpc.net/problem/2609

if __name__ == "__main__":
    num1, num2 = map(int, input().split())

    # 유클리드 호제법 사용
    remain = num1 % num2
    gcd = num2
    while remain:
        gcd, remain = remain, gcd % remain

    print(gcd)
    print(num1*num2 // gcd)
