#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("rewards" "penalties" "incentives" "distributions" "allocations" "emissions" "yields" "returns" "dividends" "payouts")

echo "Adding 2000 commits..."

for i in {1..2000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 33105))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/entry-$NUM.clar << EOF
(define-public (entry-$NUM (amount uint))
  (ok (* amount u$i)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE entry $NUM" --quiet
  
  if [ $((i % 200)) -eq 0 ]; then
    echo "Progress: $i/2000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
