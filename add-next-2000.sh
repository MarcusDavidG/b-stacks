#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("processors" "transformers" "aggregators" "filters" "parsers" "serializers" "decorators" "factories" "builders" "strategies")

echo "Adding 2000 commits..."

for i in {1..2000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 4900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/component-$NUM.clar << EOF
(define-public (component-$NUM (input uint))
  (ok (* input u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE component $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/2000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
