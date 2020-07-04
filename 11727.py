'''
20-07-04 23:17
시도 횟수: 2
실패 사유: 런타임 에러
원인: size 크기에 따라 tile의 리스트 접근을 다르게 해주지 못해 Segmentation Fault 발생. 
'''
size = int(input())
tile = [0 for i in range(size)]
tile[0] = 1
if size > 1:
    tile[1] = 3
if size > 2:
    for i in range(2, size):
        tile[i] = tile[i-1] + 2*tile[i-2]
print(tile[size-1] % 10007)
