#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("events" "signals" "triggers" "hooks" "callbacks" "handlers" "listeners" "subscribers" "publishers" "emitters")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 17900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/event-$NUM.clar << EOF
(define-public (event-$NUM (data uint))
  (ok (print {event: "event-$NUM", data: data})))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE event $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
