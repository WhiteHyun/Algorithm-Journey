star = int(input())
for i in range(star):
    for j in range(star - 1, i, -1):
        print(" ", end="")
    print("*", end="")
    for k in range(i):
        print(" *", end="")
    print()
