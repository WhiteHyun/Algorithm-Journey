import sys
count = 0
j = 0
size = int(sys.stdin.readline())
count = size
for i in range(size):
    inputStr = sys.stdin.readline()
    while j < len(inputStr):
        length = inputStr.count(inputStr[j])
        if inputStr.find(inputStr[j], j + length) != -1:
            count -= 1
            break
        j += length
    j = 0


print(count)
