#!/bin/zsh

# 새 백준 문제 풀이 Swift 파일을 만들어주는 스크립트.
#
# 문제 번호를 제공하면,
# - 해당 문제의 이름과 링크를 주석으로 포함하고
# - 문제 번호를 이름으로 가지는
# Swift 파일을 생성함.
#
# 사용법: ./boj.zsh [문제 번호]

# Check if a command is installed
check_command() {
  local command="$1"
  if ! command -v "$command" &> /dev/null; then
    echo "$command 명령어가 설치되어 있지 않습니다."
    read -p "$command을 설치하시겠습니까? (Y/n): " install_command
    case "$install_command" in
      [nN] | [nN][oO])
        echo "$command 설치가 거부되었습니다. 스크립트를 종료합니다."
        exit 1
        ;;
      *)
        echo "$command 설치를 진행합니다..."
        brew install "$command"
        ;;
    esac
  fi
}

# Extract the problem name from the LeetCode URL
extract_problem_number() {
  local url="$1"
  echo "$url" | grep -oE "[0-9]+$"
}

# Create the Swift code snippet
create_swift_code_snippet() {
  local question_id="$1"

  local swift_code="final class BOJSolution${question_id} {
  func solution(<#parameters#>) -> <#return type#> {
    <#function body#>
  }
}"

 echo "$swift_code"
}

# Create the Swift file content
create_swift_file_content() {
  local file_name="$1"
  local swift_code="$2"

  local today=$(date "+%Y/%m/%d")

  local content=$(cat <<EOF
//
//  $file_name
//  https://www.acmicpc.net/problem/1759
//  Algorithm
//
//  Created by 홍승현 on $today.
//

import Foundation

$swift_code
EOF
)

  echo "$content"
}

# Save the Swift file
save_swift_file() {
  local file_name="$1"
  local difficulty="$2"
  local content="$3"

  local DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
  local solution_folder="$DIR/Algorithm/BOJ/$difficulty"
  mkdir -p "$solution_folder"

  local solution_file="$solution_folder/$file_name.swift"
  echo "$content" > "$solution_file"
  echo "Swift 파일 생성 완료: $file_name"
}

# Add the Swift file to Xcode project
add_to_xcode_project() {
  local solution_file="$1.swift"
  local difficulty="$2"
  local ps="BOJ"

  ./add_to_xcode_project.rb "$solution_file" "$ps" "$difficulty"
  echo "Xcode 프로젝트에 Swift 파일 추가 완료: $solution_file"
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

# Create a Swift file for the LeetCode problem
create_swift_file() {
  local json_data="$1"
  local question_id=$(echo "$json_data" | jq ".problemId")
  local title=$(echo "$json_data" | jq ".titleKo")
  title=${title#\"}
  title=${title%\"}
  local difficulty=$(echo "$json_data" | jq ".level")

  # difficulty must be a number.
  if [ -z $difficulty ] || [ $difficulty -ne $difficulty ] 2>/dev/null; then
      echo "difficulty must be a number."
      exit 1
  fi

  case $(((difficulty-1) / 5)) in
      0) rank="Bronze"   ;;
      1) rank="Silver"   ;;
      2) rank="Gold"     ;;
      3) rank="Platinum" ;;
      4) rank="Diamond"  ;;
      *) rank="Unknown"  ;;
  esac

  local swift_code=$(create_swift_code_snippet "$question_id")
  local file_name="${question_id}. ${title}"
  if [ -d "secrets" ] && [ -f "secrets/deepL.txt" ]; then
    file_name=$(translate_file_name "$file_name")
  fi
  local content=$(create_swift_file_content "$file_name" "$swift_code")

  save_swift_file "$file_name" "$rank" "$content"
  add_to_xcode_project "$file_name" "$rank"
}


# Check if required commands are installed
check_command "jq"

# Check if the problem number or URL is provided
if [ "$#" -eq 1 ]; then
  input="$1"
  if [[ "$input" == *"https://www.acmicpc.net/problem/"* ]]; then
      # If the input is a BOJ URL
      problem_number=$(extract_problem_number "$input")
  elif [[ "$input" =~ ^[0-9]+$ ]]; then
      # If the input is already a Number
      problem_number="$input"
  fi
else
  echo "BOJ 문제번호 또는 URL을 입력해야 합니다."
  exit 1
fi

echo "Problem Number: $problem_number"

response=$(curl --request GET \
  --url "https://solved.ac/api/v3/search/problem?query=${problem_number}&page=1&sort=id&direction=asc" \
  --header 'Content-Type: application/json' | jq ".items | .[0]")


if ! echo "$response" | jq -e '.titleKo' >/dev/null 2>&1; then
  echo "solved.ac API로부터 유효한 응답을 받지 못했습니다. 스크립트를 종료합니다."
  exit 1
fi

echo "solved.ac API로 응답 수신 완료"

# Create the Swift file
create_swift_file "$response"

echo "Xcode 프로젝트 여는 중..."
open Algorithm.xcodeproj