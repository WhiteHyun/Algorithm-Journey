.PHONY: build clean daily fetch help

CLI_DIR := LeetCodeCLI
CLI_PATH := $(CLI_DIR)/.build/debug/leetcode

# Build CLI in debug mode (only if binary doesn't exist)
build:
	@if [ ! -f "$(CLI_PATH)" ]; then \
		cd $(CLI_DIR) && swift build; \
	fi

# Clean build artifacts
clean:
	@rm -rf $(CLI_DIR)/.build

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
	@echo "  make build    Build CLI (only if binary doesn't exist)"
	@echo "  make clean    Remove build artifacts (forces rebuild on next run)"
	@echo "  make daily    Fetch today's daily challenge"
	@echo "  make fetch p=<number|slug|url>  Fetch a specific problem"
	@echo ""
	@echo "Examples:"
	@echo "  make daily"
	@echo "  make fetch p=1"
	@echo "  make fetch p=two-sum"
	@echo "  make fetch p=https://leetcode.com/problems/two-sum/"
