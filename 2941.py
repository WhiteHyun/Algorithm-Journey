'''
문제 제목: 크로아티아 알파벳
시도 횟수: 1
실패 사유: X
원인: X
결과: 이중 반복문을 통해 좀(?) 복잡하게 문제를 풀었다.
다른 사람의 코드를 보니 'in' 과 같은 속성을 사용하여 단일반복문으로 실행이 되는 것을 보고
충격먹었다. in 사용법에 대해 잘 모르고있었는데 다시금 배우게 됐다..ㅎ;;
'''
croatia = ['c=', 'c-', 'dz=', 'd-', 'lj', 'nj', 's=', 'z=']


def lenCroatian(alphabet):
    index = 0
    length = 0
    while(alphabet != ''):
        for i in croatia:
            # 크로아티아 2자리 알파벳일 경우
            if i != 2 and alphabet[index:index+2] == i:
                length += 1
                # 알파벳 말미까지 확인한 경우 None으로 값을 바꾸고,
                # 아닌경우에는 다음 인덱스부터를 알파벳으로 설정
                alphabet = alphabet[index+2:]
                break
            # 크로아티아 3자리 알파벳일 경우
            elif alphabet[index:index+3] == i:
                length += 1
                alphabet = alphabet[index+3:]
                break
            # 크로아티아 알파벳이 아닌 경우
            elif i == 'z=':
                length += 1
                alphabet = alphabet[index+1:]
                break
    return length


string = input()
print(lenCroatian(string))
