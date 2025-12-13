.PHONY: build daily fetch help

CLI_DIR := LeetCodeCLI
CLI_PATH := $(CLI_DIR)/.build/release/leetcode

# Build CLI in release mode
build:
	@cd $(CLI_DIR) && swift build -c release

# Fetch today's daily challenge
daily: build
	@$(CLI_PATH) daily

# Fetch a specific problem (usage: make fetch slug=two-sum)
fetch: build
	@$(CLI_PATH) fetch $(slug)

# Show help
help:
	@echo "LeetCode CLI - Available commands:"
	@echo ""
	@echo "  make build    Build CLI in release mode"
	@echo "  make daily    Fetch today's daily challenge"
	@echo "  make fetch slug=<problem-slug>  Fetch a specific problem"
	@echo ""
	@echo "Examples:"
	@echo "  make daily"
	@echo "  make fetch slug=two-sum"
	@echo "  make fetch slug=https://leetcode.com/problems/two-sum/"
