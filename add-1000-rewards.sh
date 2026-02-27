#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("rewards" "penalties" "incentives" "bonuses" "fees" "commissions" "dividends" "yields" "returns" "profits")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 20900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/reward-$NUM.clar << EOF
(define-public (reward-$NUM (recipient principal))
  (ok (as-contract (stx-transfer? u$NUM tx-sender recipient))))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE reward $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
