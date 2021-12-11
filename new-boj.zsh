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


problem_link="https://www.acmicpc.net/problem/$problem_number"
tier_link="https://solved.ac/api/v3/problem/show?problemId=$problem_number"

problem_name=$(curl -s -N "$problem_link" | sed -n "s/^.*<title>\(.*\)<\/title>.*$/\1/p")
difficulty=$(curl -s -N "$tier_link" | jq ".level")

# difficulty must be a number.
if [ -n $difficulty ] && [ $difficulty -eq $difficulty ] 2>/dev/null; then
    # OK. It is a number.
else
    echo "difficulty must be a number."
    exit 1
fi

# 백준 문제 티어 가져오기
if [ $((difficulty / 5)) -eq 0 ]; then
    tier="bronze"
elif [ $((difficulty / 5)) -eq 1 ]; then
    tier="silver"
elif [ $((difficulty / 5)) -eq 2 ]; then
    tier="gold"
elif [ $((difficulty / 5)) -eq 3 ]; then
    tier="platinum"
elif [ $((difficulty / 5)) -eq 4 ]; then
    tier="diamond"
fi

if [ $((difficulty % 5)) -eq 1 ]; then
    stage="5"
elif [ $((difficulty % 5)) -eq 2 ]; then
    stage="4"
elif [ $((difficulty % 5)) -eq 3 ]; then
    stage="3"
elif [ $((difficulty % 5)) -eq 4 ]; then
    stage="2"
elif [ $((difficulty % 5)) -eq 0 ]; then
    stage="1"
fi

difficulty_tier="$tier$stage"


solution_file="$DIR/boj/python/$difficulty_tier/$problem_number.py"



# python version
python_version=$(python3 --version)

# today's date
today=$(date "+%Y/%m/%d")

echo "#" >> "$solution_file"
echo "#  $problem_name" >> "$solution_file"
echo "#  $problem_link" >> "$solution_file"
echo "#  Version: $python_version" >> "$solution_file"
echo "#" >> "$solution_file"
echo "#  Created by WhiteHyun on $today." >> "$solution_file"
echo "#" >> "$solution_file"
echo -e "\n\nfrom sys import stdin\n\nread = stdin.readline\n\nif __name__ == \"__main__\":\n    pass" >> "$solution_file"


echo "$problem_name"
echo "$solution_file"
