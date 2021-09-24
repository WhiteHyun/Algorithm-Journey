# 1913번: 달팽이
# https://www.acmicpc.net/problem/1913


def make_snail_matrix(length: int) -> list:
    matrix = [[0]*length for i in range(length)]
    start = end = 0
    return make_snail(start, end, matrix, length)


def make_snail(row: int, col: int, matrix: list, length: int) -> list:
    """
    달팽이 행렬을 만들어줍니다.
    Parameters
    ----------
    row: 가로
    col: 세로
    matrix: 달팽이배열
    length: 달팽이배열을 만들 행렬의 길이
    """
    value = length ** 2
    matrix[row][col] = value
    if length == 1:
        return matrix

    # 위에서 아래로
    for i in range(row+1, row+length):
        value -= 1
        matrix[i][col] = value
        temp_row = i

    # 왼쪽에서 오른쪽으로
    for j in range(col+1, col+length):
        value -= 1
        matrix[temp_row][j] = value
        temp_col = j

    # 아래에서 위로
    for i in range(temp_row-1, temp_row-length, -1):
        value -= 1
        matrix[i][temp_col] = value
        temp_row = i

    # 오른쪽에서 왼쪽으로
    for j in range(temp_col-1, temp_col-length+1, -1):
        value -= 1
        matrix[temp_row][j] = value

    return make_snail(row + 1, col + 1, matrix, length - 2)


def print_snail_matrix(matrix: list) -> None:
    formatted_matrix = list(map(lambda mat: list(map(str, mat)), matrix))
    for mat in formatted_matrix:
        print(" ".join(mat))


def find_values_in_snail_matrix(matrix: list, value: int) -> tuple:
    """
    달팽이 행렬에서 특정 값을 찾습니다.
    """
    for i in range(len(matrix)):
        if value in matrix[i]:
            return (i + 1, matrix[i].index(value) + 1)


if __name__ == "__main__":
    length = int(input())
    find_number = int(input())
    snail_matrix = make_snail_matrix(length)
    print_snail_matrix(snail_matrix)
    x, y = find_values_in_snail_matrix(snail_matrix, find_number)
    print(x, y)
