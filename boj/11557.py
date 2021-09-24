# 11557번: Yangjojang of The Year
# https://www.acmicpc.net/problem/11557

if __name__ == "__main__":
    test_case = int(input())

    for _ in range(test_case):
        school_dict = {}
        for i in range(int(input())):
            school, drink = input().split()
            school_dict[school] = int(drink)
        print(sorted(school_dict.items(), key=lambda x: x[1])[-1][0])
