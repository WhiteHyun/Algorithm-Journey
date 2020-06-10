number = input()
count = 1
_set = [1 for i in range(10)]
for i in range(len(number)):
    index = int(number[i])
    if index == 6 or index == 9:
        if _set[6] > 0:
            _set[6] -= 1
        elif _set[9] > 0:
            _set[9] -= 1
        else:
            for i in range(10):
                _set[i] += 1
            _set[index] -= 1
            count += 1
    else:
        if _set[index] > 0:
            _set[index] -= 1
        else:
            for i in range(10):
                _set[i] += 1
            _set[index] -= 1
            count += 1
print(count)
