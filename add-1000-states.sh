#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("states" "contexts" "sessions" "scopes" "environments" "configurations" "settings" "parameters" "options" "preferences")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 21900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/state-$NUM.clar << EOF
(define-data-var state-$NUM uint u$NUM)
(define-read-only (get-state-$NUM) (var-get state-$NUM))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE state $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
