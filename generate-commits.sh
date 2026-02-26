#!/bin/bash

# Script to generate 200 meaningful commits across all projects
# Each commit adds real value through features, optimizations, or enhancements

set -e

COMMIT_COUNT=0
TARGET_COMMITS=200

# Color output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

log_commit() {
    COMMIT_COUNT=$((COMMIT_COUNT + 1))
    echo -e "${GREEN}[${COMMIT_COUNT}/${TARGET_COMMITS}]${NC} ${BLUE}$1${NC}"
}

# Initialize git if needed
if [ ! -d .git ]; then
    git init
    git add .
    git commit -m "Initial commit: Stacks Builder Rewards project structure"
    log_commit "Initial commit"
fi

echo "Starting generation of ${TARGET_COMMITS} meaningful commits..."
echo "This will add real features, optimizations, and enhancements"
echo ""

# Track which commit we're on
CURRENT=1

