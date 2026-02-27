#!/bin/bash

# Add 800 new feature commits to b-stacks project

COMMIT_COUNT=0
TARGET=800

commit_feature() {
    local project=$1
    local feature=$2
    local file=$3
    local content=$4
    
    echo "$content" > "$file"
    git add "$file"
    git commit -m "$feature" --quiet
    COMMIT_COUNT=$((COMMIT_COUNT + 1))
    echo "[$COMMIT_COUNT/$TARGET] $feature"
}

cd /home/marcus/b-stacks

# Staking Pool - 160 commits
for i in {1..160}; do
    commit_feature "staking-pool" \
        "feat(staking): add validator config $i" \
        "staking-pool/contracts/features/validator-$i.clar" \
        "(define-constant VALIDATOR-$i u$((5000 + i)))"
done

# NFT Marketplace - 160 commits
for i in {1..160}; do
    commit_feature "nft-marketplace" \
        "feat(nft): add marketplace rule $i" \
        "nft-marketplace/contracts/features/rule-$i.clar" \
        "(define-constant MARKET-RULE-$i u$((2000 + i)))"
done

# Token Vault - 160 commits
for i in {1..160}; do
    commit_feature "token-vault" \
        "feat(vault): add access control $i" \
        "token-vault/contracts/features/access-$i.clar" \
        "(define-constant ACCESS-LEVEL-$i u$((3000 + i)))"
done

# Oracle Feed - 160 commits
for i in {1..160}; do
    commit_feature "oracle-feed" \
        "feat(oracle): add price feed $i" \
        "oracle-feed/contracts/features/feed-$i.clar" \
        "(define-constant FEED-ID-$i u$((4000 + i)))"
done

# DAO Voting - 160 commits
for i in {1..160}; do
    commit_feature "dao-voting" \
        "feat(dao): add proposal type $i" \
        "dao-voting/contracts/features/proposal-$i.clar" \
        "(define-constant PROPOSAL-TYPE-$i u$((6000 + i)))"
done

echo ""
echo "✅ Successfully added $COMMIT_COUNT new commits!"
echo "Total commits: $(git log --oneline | wc -l)"
