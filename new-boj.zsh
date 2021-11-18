#!/bin/zsh

# 새 백준 문제 풀이 파이썬 파일을 만들어주는 스크립트.
#
# 문제 번호를 제공하면,
# - 해당 문제의 이름과 링크를 주석으로 포함하고
# - 문제 번호를 이름으로 가지는
# 파이썬 파일을 생성함.
#
# 사용법: ./new-boj.zsh [문제 번호] [제출 언어]

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

if [ "$#" -eq 0 ]; then
  echo -n "백준 문제 번호: "
  read -r problem_number
else
  problem_number="$1"
fi

# problem name
if [ "$2" = "python" ]; then
  solution_file="$DIR/boj/python/$problem_number.py"
elif [ "$2" = "swift" ]; then
  solution_file="$DIR/boj/swift/$problem_number.swift"
fi

problem_link="https://www.acmicpc.net/problem/$problem_number"
problem_name=$(curl -s -N "$problem_link" | sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p")

# python version
python_version=$(python3 --version)

# today's date
today=$(date "+%Y/%m/%d")

# [제출 언어]가 파이썬인 경우
if [ "$2" = "python" ]; then
  echo "# $problem_name" >> "$solution_file"
  echo "# $problem_link" >> "$solution_file"
  echo "# Version: $python_version" >> "$solution_file"
  echo -e "\n\nfrom sys import stdin\n\nread = stdin.readline\n\nif __name__ == \"__main__\":\n    pass" >> "$solution_file"
# [제출 언어]가 swift인 경우
elif [ "$2" = "swift" ]; then
  echo "//" >> "$solution_file"
  echo "//  $problem_name" >> "$solution_file"
  echo "//  $problem_link" >> "$solution_file"
  echo "//" >> "$solution_file"
  echo "//  Created by WhiteHyun on $today." >> "$solution_file"
  echo "//" >> "$solution_file"
  echo -e "\nimport Foundation" >> "$solution_file"
fi

echo "$problem_name"
echo "$solution_file"
