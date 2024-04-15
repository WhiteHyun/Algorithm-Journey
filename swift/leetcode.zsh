#!/bin/zsh

# Extract the problem name from the LeetCode URL
extract_problem_name() {
  local url="$1"
  echo "$url" | sed -n 's/.*problems\/\(.*\)\/description.*/\1/p'
}

# Create a Swift file for the LeetCode problem
create_swift_file() {
  local json_data="$1"

  local question_id=$(echo -E "$json_data" | jq -r '.data.question.questionId')
  local difficulty=$(echo -E "$json_data" | jq -r '.data.question.difficulty')
  local title=$(echo -E "$json_data" | jq -r '.data.question.title')
  local title_slug=$(echo -E "$json_data" | jq -r '.data.question.titleSlug')

  local swift_code=$(echo -E "$json_data" | jq -r '.data.question.codeSnippets[] | select(.lang == "Swift") | .code')
  local class_name="LeetCodeSolution${question_id}"
  swift_code=$(echo "$swift_code" | sed "s/Solution/${class_name}/g")

  local file_name="${question_id}. ${title}"
  local DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
  local solution_folder="$DIR/Algorithm/LeetCode/$difficulty"
  mkdir -p "$solution_folder"

  local solution_file="$solution_folder/$file_name.swift"
  local today=$(date "+%Y/%m/%d")

  {
    echo "//"
    echo "//  $file_name"
    echo "//  https://leetcode.com/problems/$title_slug/description/"
    echo "//  Algorithm"
    echo "//"
    echo "//  Created by 홍승현 on $today."
    echo "//\n"
    echo "import Foundation\n"
    echo "$swift_code"
  } >> "$solution_file"


  # Add Swift file to Xcode Project
  ./add_to_xcode_project.rb "$solution_file"


  echo "Swift 파일이 생성되었습니다: $file_name"
}

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
  echo "You need to provide the LeetCode problem title-slug or URL"
  exit 1
fi

echo "Problem Slug: $problem_slug"

# GraphQL query to fetch problem details
query='{
  "query": "query selectProblem($titleSlug: String!) { question(titleSlug: $titleSlug) { questionId title titleSlug difficulty exampleTestcases codeSnippets { lang langSlug code } } }",
  "variables": {
    "titleSlug": "'"$problem_slug"'"
  }
}'

# Send a POST request to the LeetCode GraphQL API
response=$(curl -s -X POST -H "Content-Type: application/json" --data "$query" https://leetcode.com/graphql)

echo "$response"

# Create the Swift file
create_swift_file "$response"
