.PHONY: build daily fetch help

CLI_DIR := LeetCodeCLI
CLI_PATH := $(CLI_DIR)/.build/release/leetcode

# Build CLI in release mode
build:
	@cd $(CLI_DIR) && swift build -c release

# Fetch today's daily challenge
daily: build
	@$(CLI_PATH) daily

# Fetch a specific problem (usage: make fetch p=1 or p=two-sum)
fetch: build
	@$(CLI_PATH) fetch $(p)

# Show help
help:
	@echo "LeetCode CLI - Available commands:"
	@echo ""
	@echo "  make build    Build CLI in release mode"
	@echo "  make daily    Fetch today's daily challenge"
	@echo "  make fetch p=<number|slug|url>  Fetch a specific problem"
	@echo ""
	@echo "Examples:"
	@echo "  make daily"
	@echo "  make fetch p=1"
	@echo "  make fetch p=two-sum"
	@echo "  make fetch p=https://leetcode.com/problems/two-sum/"
