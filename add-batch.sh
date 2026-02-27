#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("engines" "executors" "dispatchers" "coordinators" "orchestrators" "managers" "directors" "supervisors" "regulators" "controllers")

echo "Adding 2000 commits..."

for i in {1..2000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 7900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/logic-$NUM.clar << EOF
(define-public (logic-$NUM (param uint))
  (ok (- param u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE logic $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/2000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
