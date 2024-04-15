#!/bin/zsh

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
extract_problem_name() {
  local url="$1"
  echo "$url" | sed -n 's/.*problems\/\(.*\)\/description.*/\1/p'
}

# Create the Swift code snippet
create_swift_code_snippet() {
  local json_data="$1"
  local question_id="$2"

  local swift_code=$(echo -E "$json_data" | jq -r '.data.question.codeSnippets[] | select(.lang == "Swift") | .code')
  local class_name="LeetCodeSolution${question_id}"
  swift_code=$(echo "$swift_code" | sed "s/Solution/${class_name}/g")

  echo "$swift_code"
}

# Create the Swift file content
create_swift_file_content() {
  local file_name="$1"
  local title_slug="$2"
  local swift_code="$3"

  local today=$(date "+%Y/%m/%d")

  local content=$(cat <<EOF
//
//  $file_name
//  https://leetcode.com/problems/$title_slug/description/
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
  local solution_folder="$DIR/Algorithm/LeetCode/$difficulty"
  mkdir -p "$solution_folder"

  local solution_file="$solution_folder/$file_name.swift"
  echo "$content" > "$solution_file"
  echo "Swift 파일 생성 완료: $file_name"
}

# Add the Swift file to Xcode project
add_to_xcode_project() {
  local solution_file="$1.swift"
  local difficulty="$2"

  ./add_to_xcode_project.rb "$solution_file" "$difficulty"
  echo "Xcode 프로젝트에 Swift 파일 추가 완료: $solution_file"
}

# Create a Swift file for the LeetCode problem
create_swift_file() {
  local json_data="$1"

  local question_id=$(echo -E "$json_data" | jq -r '.data.question.questionId')
  local difficulty=$(echo -E "$json_data" | jq -r '.data.question.difficulty')
  local title=$(echo -E "$json_data" | jq -r '.data.question.title')
  local title_slug=$(echo -E "$json_data" | jq -r '.data.question.titleSlug')

  local swift_code=$(create_swift_code_snippet "$json_data" "$question_id")
  local file_name="${question_id}. ${title}"
  local content=$(create_swift_file_content "$file_name" "$title_slug" "$swift_code")

  save_swift_file "$file_name" "$difficulty" "$content"
  add_to_xcode_project "$file_name" "$difficulty"
}

# Check if required commands are installed
check_command "jq"

# Check if the problem title-slug or URL is provided
if [ "$#" -eq 1 ]; then
  input="$1"
  if [[ "$input" == *"https://leetcode.com/problems/"* ]]; then
      # If the input is a LeetCode URL
      problem_slug=$(extract_problem_name "$input")
  else
      # If the input is already a title-slug
      problem_slug="$input"
  fi
else
  echo "LeetCode 문제의 title-slug 또는 URL을 입력해야 합니다."
  exit 1
fi

echo "문제 Slug: $problem_slug"

# GraphQL query to fetch problem details
query='{
  "query": "query selectProblem($titleSlug: String!) { question(titleSlug: $titleSlug) { questionId title titleSlug difficulty exampleTestcases codeSnippets { lang langSlug code } } }",
  "variables": {
    "titleSlug": "'"$problem_slug"'"
  }
}'

echo "LeetCode GraphQL API에 문제 세부정보 요청 중..."

# Send a POST request to the LeetCode GraphQL API
response=$(curl -s -X POST -H "Content-Type: application/json" --data "$query" https://leetcode.com/graphql)

# Check if the response contains valid data
if ! echo -E "$response" | jq -e '.data.question' >/dev/null 2>&1; then
    echo "LeetCode API로부터 유효한 응답을 받지 못했습니다. 스크립트를 종료합니다."
    exit 1
fi

echo "LeetCode에서 문제 세부정보 응답 수신 완료"

# Create the Swift file
create_swift_file "$response"

echo "Xcode 프로젝트 열기: Algorithm.xcodeproj"
open Algorithm.xcodeproj
