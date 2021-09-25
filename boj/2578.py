# 2578번: 빙고
# https://www.acmicpc.net/problem/2578

PAINT_BINGO = 0
BINGO_SIZE = 5


def is_bingo(bingo_list: list) -> bool:
    """
    빙고가 되었는지 알려주는 함수입니다.
    빙고라면 `참`을, 아니라면 `거짓`을 리턴합니다.
    """
    bingo_count = 0

    # 가로 빙고 체크
    for bingo_row_list in bingo_list:
        if bingo_row_list.count(PAINT_BINGO) == BINGO_SIZE:
            bingo_count += 1

    # 세로 빙고 체크
    for bingo_col_list in list(zip(*bingo_list)):
        if bingo_col_list.count(PAINT_BINGO) == BINGO_SIZE:
            bingo_count += 1

    # 왼쪽 대각선 빙고 체크
    count = 0
    for i in range(BINGO_SIZE):
        if bingo_list[i][i] == PAINT_BINGO:
            count += 1

    if count == BINGO_SIZE:
        bingo_count += 1

    # 오른쪽 대각선 빙고 체크
    count = 0
    for i in range(BINGO_SIZE):
        if bingo_list[BINGO_SIZE-i-1][i] == PAINT_BINGO:
            count += 1

    if count == BINGO_SIZE:
        bingo_count += 1

    if bingo_count >= 3:
        return True
    else:
        return False


def paint_bingo(bingo_list: list, call_number: int) -> None:
    """
    불린 숫자에 위치를 색칠합니다.
    """
    for bingo_row_list in bingo_list:
        for i in range(len(bingo_row_list)):
            if call_number == bingo_row_list[i]:
                bingo_row_list[i] = PAINT_BINGO


if __name__ == "__main__":

    # 사용자의 빙고 입력 (2차원)
    bingo_list = []
    for i in range(5):
        bingo_list.append(list(map(int, input().split())))

    # 사회자가 불러주는 빙고 번호 입력 (extend를 이용해 1차원으로 만듦)
    call_list = []
    for i in range(5):
        call_list.extend(list(map(int, input().split())))

    count = 0

    # 사회자가 번호를 순서대로 부른다.
    for number in call_list:
        paint_bingo(bingo_list, number)  # 불러준 번호를 색칠한다.
        count += 1
        if is_bingo(bingo_list):  # 빙고라면 사회자한테 빙고라고 소신있게 소리쳐본다..!
            break

    print(count)
