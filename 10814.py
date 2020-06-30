info = []
for _ in range(int(input())):
    result = input().split()
    info.append([int(result[0]), result[1]])
info.sort(key=lambda person: person[0])
for person in info:
    print(f"{person[0]} {person[1]}")
