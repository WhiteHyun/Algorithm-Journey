bird = int(input())
seconds = 0
i = 1
while bird != 0:
    if i > bird:
        i = 1
        continue
    bird -= i
    i += 1
    seconds += 1
print(seconds)
