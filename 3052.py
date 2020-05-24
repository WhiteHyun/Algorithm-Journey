num = []
ret = []
count = 0
for i in range(10):
    num.append(int(input()) % 42)
    if ret.count(num[i]) == 0:
        ret.append(num[i])

print(len(ret))
