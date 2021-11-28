# 1259번: 팰린드롬수
# https://www.acmicpc.net/problem/1259
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline

if __name__ == "__main__":
    while (palindrome := read().rstrip()) != "0":
        if palindrome == palindrome[::-1]:
            print("yes")
        else:
            print("no")
