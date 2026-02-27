#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("converters" "encoders" "decoders" "compressors" "extractors" "generators" "formatters" "normalizers" "sanitizers" "optimizers")

echo "Adding 1000 commits..."

for i in {1..1000}; do
  PROJECT=${PROJECTS[$((i % 5))]}
  TYPE=${TYPES[$((i % 10))]}
  NUM=$((i + 10900))
  
  mkdir -p $PROJECT/contracts/$TYPE
  cat > $PROJECT/contracts/$TYPE/impl-$NUM.clar << EOF
(define-public (impl-$NUM (data uint))
  (ok (mod data u$NUM)))
EOF
  
  git add . && git commit -m "feat($PROJECT): add $TYPE impl $NUM" --quiet
  
  if [ $((i % 100)) -eq 0 ]; then
    echo "Progress: $i/1000 commits"
  fi
done

echo "Complete! Total commits:"
git log --oneline | wc -l
