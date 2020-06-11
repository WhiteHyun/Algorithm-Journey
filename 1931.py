meeting = []
sum = 1
count = int(input())
for i in range(count):
    meeting.append(list(map(int, input().split())))
meeting.sort(key=lambda list: (list[1], list[0]))
default = meeting[0]
for i in range(1, count):
    if default[1] <= (meeting[i])[0]:
        sum += 1
        default = meeting[i]

print(sum)
