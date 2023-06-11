#!/bin/zsh

# 새 프로그래머스 문제 풀이 파이썬 파일을 만들어주는 스크립트.
#
# URI에 해당하는 문제 번호를 제공하면,
# - 해당 문제의 이름과 링크를 주석으로 포함하고
# - 문제 번호를 이름으로 가지는
# 파이썬 파일을 생성함.
#
# 사용법: ./pgs.zsh [문제 번호] [닉네임]
# 출처: https://github.com/potados99/problem-solving/blob/main/new-boj

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

if [ "$#" -eq 0 ]; then
  echo -n "프로그래머스 문제 번호 또는 링크: "
  read -r problem_info
elif [ "$#" -eq 1 ]; then
  problem_info="$1"
else
  exit 1
fi


# problem_info는 링크일 수도 문제 번호일 수도 있습니다.
# 그래서 문제 번호를 추출해 내야 합니다.
if [[ $problem_info =~ ^[0-9]+$ ]]; then
  # 모두 숫자이면 그대로 사용합니다.
  problem_number=$problem_info
elif [[ $problem_info =~ ^https://school.programmers.co.kr/learn/courses/30/lessons/[0-9]+$ ]]; then
  # 링크 형식이면 맨 끝에만 떼어내 씁니다.
  problem_number=$(echo "$problem_info" | sed -n "s/^.*https:\/\/school\.programmers\.co\.kr\/learn\/courses\/30\/lessons\/\([0-9]*\).*$/\1/p")
else
  # 아니면(비어있거나 숫자 아니거나 링크도 아닐 때) 뻗습니다.
  echo "문제 번호 또는 링크가 필요합니다!"
  exit 1
fi

# 
# =============================================================================
# 

# make directory if not exist.
solution_folder="$DIR/pgs"
mkdir -p "$solution_folder"

problem_link="https://school.programmers.co.kr/learn/courses/30/lessons/$problem_number"

# 파일 이름을 문제 이름으로 설정합니다.
problem_name=$(curl -s -N "$problem_link" | sed -n "s/^.*<title>코딩테스트 연습 - \(.*\) \| 프로그래머스 스쿨<\/title>.*$/\1/p")
solution_file="$solution_folder/$problem_name.py"

# python version
python_version=$(python3 --version)

# today's date
today=$(date "+%Y/%m/%d")

{
  echo "#"
  echo "#  $problem_name"
  echo "#  $problem_link"
  echo "#  Version: $python_version"
  echo "#"
  echo "#  Created by WhiteHyun on $today."
  echo "#"
  echo -e "\n\n"
} >> "$solution_file"

echo "$problem_name"
echo "$solution_file"