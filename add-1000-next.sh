#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("calculators" "estimators" "predictors" "analyzers" "evaluators" "comparators" "validators" "verifiers" "checkers" "inspectors")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 9900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/func-$NUM.clar << EOF
(define-public (func-$NUM (x uint))
  (ok (/ x u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE func $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
