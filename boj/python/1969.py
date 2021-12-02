# 1969번: DNA
# https://www.acmicpc.net/problem/1969
# Version: Python 3.9.7


from sys import stdin

read = stdin.readline


if __name__ == "__main__":
    count, dna_count = map(int, read().split())
    dna_list = [read().rstrip() for _ in range(count)]
    hamming_distance = 0
    min_dna = []

    for dna in zip(*dna_list):
        dna_dict = {"A": 0, "C": 0, "G": 0, "T": 0}
        for char in dna:
            dna_dict[char] += 1
        min_dna.append(max(dna_dict.items(), key=lambda x: x[1])[0])
        hamming_distance += count - max(dna_dict.values())

    print("".join(min_dna))
    print(hamming_distance)
