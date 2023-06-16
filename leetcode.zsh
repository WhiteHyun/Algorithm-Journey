#!/bin/zsh

# LeetCode 파이썬 파일을 만들어주는 스크립트.
#
# LeetCode URL을 제공하면,
# - 해당 문제의 이름과 링크를 주석으로 포함하고
# - 파일명은 문제 이름으로 하는
# 파이썬 파일을 생성함.
#
# 사용법: ./leetcode.zsh [URL]

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

if [ "$#" -eq 1 ]; then
  problem_link="$1"
else
  echo "LeetCode URL을 제공해야합니다!!!"
  exit 1
fi


# 
# =============================================================================
# 

# make directory if not exist.
solution_folder="$DIR/leetcode"
mkdir -p "$solution_folder"

# 파일 이름을 문제 이름으로 설정합니다.
problem_name=$(curl -s -N "https://leetcode.com/problems/word-ladder/description/" | sed -n -e 's/^.*<span class="mr-2 text-label-1 dark:text-dark-label-1 text-lg font-medium">\(.*\)<\/span>.*$/\1/p')
problem_name="${problem_name//<!-- -->/}" # LeetCode에서 문제 이름 중간중간에 들어있는 `<!-- -->`를 제거.


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