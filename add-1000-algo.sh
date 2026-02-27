#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("algorithms" "heuristics" "patterns" "protocols" "schemas" "templates" "blueprints" "specifications" "definitions" "declarations")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 14900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/algo-$NUM.clar << EOF
(define-public (algo-$NUM (input uint))
  (ok (xor input u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE algo $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
