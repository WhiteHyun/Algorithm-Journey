# 1213번: 팰린드롬 만들기
# https://www.acmicpc.net/problem/1213


def string_to_dict(raw_str: str) -> dict:
    ret_dict = {}
    for char in raw_str:
        if char in ret_dict:
            ret_dict[char] += 1
        else:
            ret_dict[char] = 1
    return ret_dict


if __name__ == "__main__":
    raw_string = input()  # 문자열 입력
    if len(raw_string) == 1:
        print(raw_string)
    # 문자열의 길이가 3을 넘을 때
    else:
        alpha_dict = string_to_dict(raw_string)
        # 짝수개면서 알파벳이 큰 순서로 정렬
        sorted_dict = dict(sorted(alpha_dict.items(),
                                  key=lambda x: (x[1] & 1 == 0, x[0]),
                                  reverse=True))
        """
        == 성립되지 않는 팰린드롬 규칙 ==
        홀수개로 나타나는 문자가 하나 이상인 경우
        """
        if list(map(lambda num: True if num & 1 == 0 else False,
                    alpha_dict.values())).count(False) > 1:
            print("I'm Sorry Hansoo")

        # == 성립되는 팰린드롬 ==
        else:
            palindrome = ""
            for alphabet, length in sorted_dict.items():
                if length & 1 == 0:  # 짝수만큼 있는 알파벳들은 전부 거울식으로
                    palindrome = f"{alphabet*(length>>1)}{palindrome}{alphabet*(length>>1)}"
                elif length == 1:  # 낱개만 있는 알파벳은 정가운데로
                    palindrome = f"{palindrome[:len(palindrome)>>1]}{alphabet}{palindrome[len(palindrome)>>1:]}"
                else:  # 3 이상의 홀수개인 경우
                    if not palindrome:
                        palindrome = alphabet * length
                    else:
                        for i in range(len(palindrome) >> 1):  # 첫 문자부터 가운데 전 까지
                            if palindrome[i] > alphabet:  # 알파벳 크기를 비교해서 중간 사이사이에 넣음
                                palindrome = f"{palindrome[:i]}{alphabet*((length-1)>>1)}{palindrome[i:len(palindrome)>>1]}{alphabet}{palindrome[len(palindrome)>>1:(len(palindrome)>>1)*2-i]}{alphabet*((length-1)>>1)}{palindrome[(len(palindrome)>>1)*2-i:]}"
                                break
                            # 비교가 끝나도 자신의 알파벳이 클 경우 가운데에 넣음
                            elif i == (len(palindrome) >> 1) - 1:
                                palindrome = f"{palindrome[:len(palindrome)>>1]}{alphabet*length}{palindrome[len(palindrome)>>1:]}"
            print(palindrome)


# palindrome = f"""
#                                                 0: {palindrome[:i]}
#                                                 1: {alphabet*((length-1)>>1)}
#                                                 2: {palindrome[i:len(palindrome)>>1]}
#                                                 3: {alphabet}
#                                                 4: {palindrome[len(palindrome)>>1:(len(palindrome)>>1)*2-i]}
#                                                 5: {alphabet*((length-1)>>1)}
#                                                 6: {palindrome[(len(palindrome)>>1)*2-i:]}
#                                                 """
