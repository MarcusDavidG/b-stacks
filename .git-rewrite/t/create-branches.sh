#!/bin/bash

cd /home/marcus/b-stacks

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")
TYPES=("rewards" "penalties" "incentives" "distributions" "allocations" "emissions" "yields" "dividends" "payouts" "rebates")

# 50 PRs = 50 branches, each with 40 commits = 2000 total commits
COMMITS_PER_BRANCH=40
TOTAL_BRANCHES=50

echo "Creating 50 branches with 40 commits each (2000 total)..."

for b in $(seq 1 $TOTAL_BRANCHES); do
  BRANCH="feature/batch-$b"
  git checkout -b $BRANCH main --quiet

  for c in $(seq 1 $COMMITS_PER_BRANCH); do
    i=$(( (b - 1) * COMMITS_PER_BRANCH + c ))
    PROJECT=${PROJECTS[$((i % 5))]}
    TYPE=${TYPES[$((i % 10))]}
    NUM=$((i + 22900))

    mkdir -p $PROJECT/contracts/$TYPE
    cat > $PROJECT/contracts/$TYPE/item-$NUM.clar << EOF
(define-public (item-$NUM (user principal) (amount uint))
  (ok (+ amount u$NUM)))
EOF
    git add . && git commit -m "feat($PROJECT): add $TYPE item $NUM" --quiet
  done

  git push origin $BRANCH --quiet
  echo "Pushed branch $b/$TOTAL_BRANCHES: $BRANCH"
done

git checkout main --quiet
echo "All branches pushed!"
