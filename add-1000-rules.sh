#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("policies" "rules" "constraints" "conditions" "criteria" "requirements" "standards" "guidelines" "principles" "conventions")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 15900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/rule-$NUM.clar << EOF
(define-public (rule-$NUM (check uint))
  (ok (and (> check u0) (< check u$NUM))))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE rule $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
