#!/usr/bin/env bash

source scripts/common.bash
source scripts/leetcode_helper.bash

function get_daily_problem_slug() {
  local query='{
    "query": "query questionOfToday { activeDailyCodingChallengeQuestion { date link question { questionFrontendId title titleSlug difficulty } } }"
  }'

  local response
  response=$(curl -s -X POST -H "Content-Type: application/json" --data "$query" https://leetcode.com/graphql)

  # Check if the response contains valid data
  if ! echo -E "$response" | jq -e '.data.activeDailyCodingChallengeQuestion' >/dev/null 2>&1; then
    echo "Failed to fetch daily problem from LeetCode API." >&2
    exit 1
  fi

  local title_slug
  title_slug=$(echo -E "$response" | jq -r '.data.activeDailyCodingChallengeQuestion.question.titleSlug')

  echo "$title_slug"
}

function main() {
  # Check if required commands are installed
  check_command "jq"

  echo "Fetching today's LeetCode daily challenge..."

  # Get today's problem slug
  local problem_slug
  problem_slug=$(get_daily_problem_slug)

  if [ -z "$problem_slug" ] || [ "$problem_slug" = "null" ]; then
    echo "Failed to get daily problem slug. Exiting."
    exit 1
  fi

  echo "Today's Problem: $problem_slug"

  # GraphQL query to fetch problem details
  query=$(make_query "$problem_slug")

  echo "Requesting problem details from LeetCode GraphQL API..."

  # Send a POST request to the LeetCode GraphQL API
  response=$(request "$query")

  # Check if the response contains valid data
  if ! echo -E "$response" | jq -e '.data.question' >/dev/null 2>&1; then
    echo -E "$response"
    echo "Failed to receive a valid response from the LeetCode API. Exiting the script."
    exit 1
  fi

  echo "Received problem details response from LeetCode."

  # Create the Swift file
  create_swift_file "$response"

  echo "Opening Xcode project..."
  open_xcode_project
}

load_env_vars

# Call the main function
main "$@"
