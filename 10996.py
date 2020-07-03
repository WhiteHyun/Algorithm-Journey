count = int(input())

if count == 1:
    print('*')
else:
    for i in range(count):
        for j in range(count):
            if j % 2 == 0:
                print('*', end='')
            else:
                print(' ', end='')
        print()
        for j in range(count):
            if j % 2 == 0:
                print(' ', end='')
            else:
                print('*', end='')
        print()
