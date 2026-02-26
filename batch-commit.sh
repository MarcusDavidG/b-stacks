#!/bin/bash
set -e

COUNTER=1

commit() {
    git add -A
    git commit -m "$1"
    echo "[$COUNTER/200] ✓ $1"
    COUNTER=$((COUNTER + 1))
}

# Start commits
echo "Starting 200 meaningful commits..."
echo "===================================="
echo ""

