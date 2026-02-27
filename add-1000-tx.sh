#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("transfers" "swaps" "trades" "exchanges" "conversions" "transactions" "operations" "executions" "settlements" "clearances")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 19900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/tx-$NUM.clar << EOF
(define-public (tx-$NUM (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE tx $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
