# 23252번: 블록
# https://www.acmicpc.net/problem/23252


from sys import stdin
input = stdin.readline


class Block:
    """
    규칙:
        ㄴ자타일이 x개가 있다면
        1x1타일은 x개만큼은 있어야 한다.
        ㄴ자타일의 개수만큼 1x1타일을 쓰고 남았을 때, 짝수개만큼 있어야 한다.

        ㄴ자타일이 없다면
        1x1타일은 2개이상 짝수개만큼만 있으면 된다.
    """

    def __init__(self, one_by_one_tiles: int, two_by_two_tiles: int, l_shaped_tiles: int) -> None:
        self.__one_by_one_tiles = one_by_one_tiles
        self.__two_by_two_tiles = two_by_two_tiles
        self.__l_shaped_tiles = l_shaped_tiles

    def is_made_a_block(self) -> bool:
        # ㄴ자모양에는 무조건 1x1이 들어감, ㄴ자 타일 개수만큼 1x1을 채워주고 남은 변수
        one_by_one_tiles_count: int = self.__one_by_one_tiles - self.__l_shaped_tiles
        if one_by_one_tiles_count < 0:  # 만약 ㄴ자타일이 더 많을 경우 성립 X
            return False
        elif self.__one_by_one_tiles == 0 and self.__two_by_two_tiles & 1 == 1:  # 1x1타일도 없는데 2x1타일이 홀수개일 경우 이 역시도 성립 X
            return False
        elif one_by_one_tiles_count & 1 == 0:  # 그 외에 경우에 1x1 타일이 짝수 개일때
            return True
        else:  # 나머지 경우는 전부 성립 X
            return False


def block_input() -> Block:
    one_by_one_tiles, two_by_two_tiles, l_shaped_tiles = map(
        int, input().split())
    return Block(one_by_one_tiles, two_by_two_tiles, l_shaped_tiles)


if __name__ == "__main__":
    for _ in range(int(input())):
        block = block_input()
        if block.is_made_a_block():
            print("Yes")
        else:
            print("No")
