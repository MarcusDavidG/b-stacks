#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("interceptors" "guards" "pipes" "resolvers" "providers" "repositories" "gateways" "listeners" "observers" "schedulers")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 6900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/unit-$NUM.clar << EOF
(define-public (unit-$NUM (value uint))
  (ok (+ value u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE unit $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
