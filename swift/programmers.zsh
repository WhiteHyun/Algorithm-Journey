#!/bin/zsh

#  programmers.zsh
#  Algorithm
#
#  Created by 홍승현 on 2023/02/14.
#
# 새 프로그래머스 문제 풀이 Swift 파일을 만들어주는 스크립트.
#
# URI에 해당하는 문제 번호 또는 URL을 제공하면,
# - 해당 문제의 이름과 링크를 주석으로 포함하고
# - 문제 번호와 이름을 파일명으로 가지는
# Swift 파일을 생성함.
#
# 사용법: ./programmers.zsh [문제 번호 또는 전체URL]

# 문제 번호 추출 함수
extract_problem_number() {
  local problem_info=$1
  if [[ $problem_info =~ ^[0-9]+$ ]]; then
    echo "$problem_info"
  elif [[ $problem_info =~ ^https://school.programmers.co.kr/learn/courses/30/lessons/[0-9]+ ]]; then
    echo "$problem_info" | sed -n "s/^.*https:\/\/school\.programmers\.co\.kr\/learn\/courses\/30\/lessons\/\([0-9]*\).*$/\1/p"
  else
    echo "문제 번호 또는 링크가 필요합니다!" >&2
    return 1
  fi
}

# Swift 코드 크롤링 및 처리 함수
process_swift_code() {
  local problem_link=$1
  local problem_info=$(curl -s -N "$problem_link")
  local problem_name=$(echo "$problem_info" | sed -n "s/^.*<title>코딩테스트 연습 - \(.*\) \| 프로그래머스 스쿨<\/title>.*$/\1/p")
  local swift_code=$(echo "$problem_info" | sed -n '/<textarea hidden id="code" name="code">/,/<\/textarea>/p' | sed 's/<textarea hidden id="code" name="code">//;s/<\/textarea>//')
  swift_code=$(echo "$swift_code" | sed 's/&gt;/>/g;s/&lt;/</g;s/&quot;/"/g;s/&#39;/'"'"'/g;s/&amp;/\&/g')
  swift_code=$(echo "$swift_code" | sed '/import Foundation/d')
  swift_code=$(echo "$swift_code" | sed 's/^/  /')
  echo "$problem_name"
  echo "$swift_code"
}

# Translate the file name to English using DeepL API
translate_file_name() {
  local file_name="$1"
  local auth_key=$(cat secrets/deepL.txt)
  local translated_title=$(curl -s -X POST 'https://api-free.deepl.com/v2/translate' \
    --header "Authorization: DeepL-Auth-Key $auth_key" \
    --header 'Content-Type: application/json' \
    --data "{
      \"text\": [
        \"$file_name\"
      ],
      \"target_lang\": \"EN\"
    }" | jq -r '.translations[0].text')

  echo $translated_title
}

# 프로그래머스 문제 풀이 파일 생성 함수
create_programmers_solution_file() {
  local problem_number=$1
  local problem_name=$2
  local swift_code=$3
  local solution_folder=$4
  local today=$(date "+%Y/%m/%d")
  local problem_link="https://school.programmers.co.kr/learn/courses/30/lessons/$problem_number?language=swift"
  local solution_file="$solution_folder/$problem_number. $problem_name.swift"
  local content=$(cat <<EOF
//
//  $problem_number. $problem_name.swift
//  $problem_link
//  Algorithm
//
//  Created by 홍승현 on $today.
//

import Foundation

final class ProgrammersSolution$problem_number {
  $swift_code
}

EOF
)
  echo "$content" > "$solution_file"
  echo "문제 풀이 파일이 생성되었습니다: $solution_file"
}

# Xcode 프로젝트에 Swift 파일 추가 함수
add_to_xcode_project() {
  local solution_file=$1
  ./add_to_xcode_project.rb "$solution_file" "Programmers"
  echo "Xcode 프로젝트에 Swift 파일 추가 완료: $solution_file"
}

# 메인 함수
main() {
  local DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
  local problem_info
  if [ "$#" -eq 0 ]; then
    echo -n "프로그래머스 문제 번호 또는 URL: "
    read -r problem_info
  elif [ "$#" -eq 1 ]; then
    problem_info="$1"
  else
    exit 1
  fi

  local problem_number=$(extract_problem_number "$problem_info")
  if [ -z "$problem_number" ]; then
    exit 1
  fi

  local solution_folder="$DIR/Algorithm/Programmers"
  mkdir -p "$solution_folder"

  local problem_link="https://school.programmers.co.kr/learn/courses/30/lessons/$problem_number?language=swift"
  local problem_name
  local swift_code
  IFS=$'\n' read -r -d '' problem_name swift_code < <(process_swift_code "$problem_link")
  if [ -d "secrets" ] && [ -f "secrets/deepL.txt" ]; then
    problem_name=$(translate_file_name "$problem_name")
  fi

  create_programmers_solution_file "$problem_number" "$problem_name" "$swift_code" "$solution_folder"

  add_to_xcode_project "$solution_folder/$problem_number. $problem_name.swift"

  echo "Xcode 프로젝트 여는 중..."
  open Algorithm.xcodeproj
}

main "$@"
