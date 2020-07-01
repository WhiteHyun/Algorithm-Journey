for _ in range(3):
    yut = list(map(int, input().split()))
    count = yut.count(1)
    if count == 0:
        print('D')
    elif count == 1:
        print('C')
    elif count == 2:
        print('B')
    elif count == 3:
        print('A')
    else:
        print('E')
