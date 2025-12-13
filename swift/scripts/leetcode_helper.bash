#!/usr/bin/env bash

# Extract the title-slug from the LeetCode URL
function extract_problem_name() {
  local url="$1"
  # Remove trailing slash if present, then extract problem slug
  url="${url%/}"
  echo "$url" | sed -n 's/.*\/problems\/\([^/?]*\).*/\1/p'
}

# Create the Swift code snippet
function create_swift_code_snippet() {
  local json_data="$1"
  local question_id="$2"
  local swift_code
  swift_code=$(echo -E "$json_data" | jq -r '.data.question.codeSnippets[] | select(.lang == "Swift") | .code')
  swift_code=$(echo -E "$swift_code" | sed '1d;$d')
  echo "$swift_code"
}

# GraphQL query to fetch problem details
function make_query() {
  local question_slug=$1
  local query='{
  "query": "query selectProblem($titleSlug: String!) { question(titleSlug: $titleSlug) { questionFrontendId title titleSlug difficulty exampleTestcases topicTags { slug } codeSnippets { lang langSlug code } } }",
  "variables": {
    "titleSlug": "'"$question_slug"'"
  }
}'
  echo "$query"
}

# Send a POST request to the LeetCode GraphQL API
function request() {
  local query="$1"
  local response
  response=$(curl -s -X POST -H "Content-Type: application/json" --data "$query" https://leetcode.com/graphql)
  echo -E "$response"
}

# Available Swift Testing tags (from Testing+Tags.swift)
declare -A SWIFT_TAGS=(
  ["array"]="array"
  ["backtracking"]="backTracking"
  ["bit-manipulation"]="bitManipulation"
  ["binary-search"]="binarySearch"
  ["binary-tree"]="binaryTree"
  ["bitmask"]="bitMask"
  ["brainteaser"]="brainTeaser"
  ["breadth-first-search"]="breadthFirstSearch"
  ["combinatorics"]="combinatorics"
  ["counting"]="counting"
  ["depth-first-search"]="depthFirstSearch"
  ["design"]="design"
  ["divide-and-conquer"]="divideAndConquer"
  ["doubly-linked-list"]="doublyLinkedList"
  ["dynamic-programming"]="dynamicProgramming"
  ["enumeration"]="enumeration"
  ["eulerian-circuit"]="eulerianCircuit"
  ["game-theory"]="gameTheory"
  ["graph"]="graph"
  ["greedy"]="greedy"
  ["hash-function"]="hashFunction"
  ["hash-table"]="hashTable"
  ["heap-priority-queue"]="heap"
  ["linked-list"]="linkedList"
  ["math"]="math"
  ["matrix"]="matrix"
  ["memoization"]="memoization"
  ["monotonic-stack"]="monotonicStack"
  ["number-theory"]="numberTheory"
  ["ordered-set"]="orderedSet"
  ["prefix-sum"]="prefixSum"
  ["queue"]="queue"
  ["recursion"]="recursion"
  ["rolling-hash"]="rollingHash"
  ["segment-tree"]="segmentTree"
  ["shortest-path"]="shortestPath"
  ["sliding-window"]="slidingWindow"
  ["simulation"]="simulation"
  ["sorting"]="sorting"
  ["stack"]="stack"
  ["string"]="string"
  ["string-matching"]="stringMatching"
  ["topological-sort"]="topologicalSort"
  ["tree"]="tree"
  ["trie"]="trie"
  ["two-pointers"]="twoPointers"
  ["union-find"]="unionFind"
)

# Map LeetCode topic tags to Swift Testing tags
function map_topic_tags() {
  local json_data="$1"
  local topic_slugs
  local swift_tags=()

  # Extract topic slugs from JSON
  topic_slugs=$(echo -E "$json_data" | jq -r '.data.question.topicTags[].slug')

  # Map each slug to Swift tag if it exists
  while IFS= read -r slug; do
    if [[ -n "${SWIFT_TAGS[$slug]}" ]]; then
      swift_tags+=(".${SWIFT_TAGS[$slug]}")
    fi
  done <<< "$topic_slugs"

  # Join tags with ", "
  local result=""
  for tag in "${swift_tags[@]}"; do
    if [ -n "$result" ]; then
      result="$result, $tag"
    else
      result="$tag"
    fi
  done
  echo "$result"
}

# Create a Swift file for the LeetCode problem
function create_swift_file() {
  local json_data="$1"
  local question_id
  local difficulty
  local title
  local title_slug
  local swift_code
  local file_name
  local content
  local unit_test_content
  local swift_tags

  question_id=$(echo -E "$json_data" | jq -r '.data.question.questionFrontendId')
  difficulty=$(echo -E "$json_data" | jq -r '.data.question.difficulty')
  title=$(echo -E "$json_data" | jq -r '.data.question.title')
  title_slug=$(echo -E "$json_data" | jq -r '.data.question.titleSlug')

  # Map LeetCode topic tags to Swift Testing tags
  swift_tags=$(map_topic_tags "$json_data")

  # Generate the code snippet
  swift_code=$(create_swift_code_snippet "$json_data" "$question_id")
  file_name="${question_id}. ${title}"

  # Generate the entire Swift code
  content=$(make_solution_code "$question_id" "$title" "https://leetcode.com/problems/$title_slug/description/" "LeetCode" "$swift_code")
  unit_test_content=$(make_unit_test_code "$question_id" "$file_name" "LeetCode" "$swift_tags")

  # Save the files
  save_swift_file "$file_name" "LeetCode" "$XCODE_MAIN_FOLDER" "$content" "$difficulty"
  if [ -n "$XCODE_UNIT_TEST_FOLDER" ]; then
    save_swift_file "LeetCode${question_id}Tests" "LeetCode" "$XCODE_UNIT_TEST_FOLDER" "$unit_test_content" "$difficulty"
  fi
}
