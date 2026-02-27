#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("metrics" "indicators" "measurements" "statistics" "counters" "trackers" "monitors" "sensors" "detectors" "recorders")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 16900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/metric-$NUM.clar << EOF
(define-public (metric-$NUM (value uint))
  (ok (+ value u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE metric $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
