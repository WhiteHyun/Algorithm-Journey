# 2581번: 소수
# https://www.acmicpc.net/problem/2581

NOT_PRIME = False


def make_prime_list(limit: int) -> list:
    """
    소수가 되는 인덱스의 각 요소들이 참(True)인 리스트를 반환합니다.

    Parameter
    ---------

    limit: int

        얼마만큼의 소수를 처리할 지 나타냅니다.

        10을 입력받으면 1부터 10 사이의 소수를 구합니다.

    Example
    -------

    >>> make_prime_list(6)
    [False, False, True, True, False, True, False]
    """
    prime_num_list = [True for _ in range(limit+1)]
    prime_num_list[0] = NOT_PRIME
    prime_num_list[1] = NOT_PRIME
    for i in range(2, (limit >> 1)+1):  # 절반만 수행해도 됨.
        if prime_num_list[i]:  # 소수이면
            # 자신의 배수가 되는 수를 전부 NOT_PRIME(False)로 변경
            for j in range(i*2, limit+1, i):
                prime_num_list[j] = NOT_PRIME

    return prime_num_list


if __name__ == "__main__":
    start, end = int(input()), int(input())
    prime_list = make_prime_list(end)

    sum_prime = 0
    min_prime = 10002

    # 소수의 합 및 최솟값 계산
    for i in range(start, end+1):
        if prime_list[i]:  # 소수일 경우
            sum_prime += i
            if min_prime > i:
                min_prime = i

    print(-1 if not sum_prime else f"{sum_prime}\n{min_prime}")
