#!/bin/bash

cd /home/marcus/b-stacks

TOKEN="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"
REPO="MarcusDavidG/b-stacks"
BASE="main"

declare -a PRS=(
  "feat/validator-scoring-v2|feat(staking): Validator performance scoring system|Implements on-chain validator performance scoring.|staking-pool/contracts/features/validator-scoring-v2.clar|feat(staking): implement validator performance scoring v2"
  "feat/reward-boost-nft-v2|feat(staking): NFT-based reward boost system|Allows NFT holders to boost their staking rewards.|staking-pool/contracts/features/reward-boost-nft-v2.clar|feat(staking): add NFT-based reward boost v2"
  "feat/bulk-nft-listing-v2|feat(nft): Bulk NFT listing with batch pricing|Enables listing multiple NFTs with batch pricing.|nft-marketplace/contracts/features/bulk-listing-v3.clar|feat(nft): add bulk listing with batch pricing v2"
  "feat/nft-loan-protocol-v2|feat(nft): NFT-collateralized loan protocol|Use NFTs as collateral for STX loans.|nft-marketplace/contracts/features/nft-loans-v2.clar|feat(nft): implement NFT-collateralized loans v2"
  "feat/collection-analytics-v2|feat(nft): Collection analytics on-chain|On-chain analytics for collection volume and floor.|nft-marketplace/contracts/features/collection-analytics-v2.clar|feat(nft): add collection analytics v2"
  "feat/nft-auction-reserve-v2|feat(nft): Auction reserve price enforcement|Prevents NFT sales below reserve price.|nft-marketplace/contracts/features/auction-reserve-v2.clar|feat(nft): enforce auction reserve prices v2"
  "feat/nft-rental-revenue|feat(nft): NFT rental with revenue sharing|Rental protocol with configurable revenue splits.|nft-marketplace/contracts/features/nft-rental-revenue.clar|feat(nft): add rental revenue sharing v2"
)

SUCCESS=0
for entry in "${PRS[@]}"; do
  IFS='|' read -r branch title body file commit_msg <<< "$entry"

  SHA=$(curl -s -H "Authorization: token $TOKEN" \
    "https://api.github.com/repos/$REPO/git/ref/heads/main" \
    | python3 -c "import sys,json; print(json.load(sys.stdin)['object']['sha'])" 2>/dev/null)

  curl -s -X POST -H "Authorization: token $TOKEN" \
    -H "Content-Type: application/json" \
    "https://api.github.com/repos/$REPO/git/refs" \
    -d "{\"ref\":\"refs/heads/$branch\",\"sha\":\"$SHA\"}" > /dev/null

  CONTENT=$(printf ";; %s\n(define-public (main)\n  (ok true))" "$title" | base64 -w 0)

  curl -s -X PUT -H "Authorization: token $TOKEN" \
    -H "Content-Type: application/json" \
    "https://api.github.com/repos/$REPO/contents/$file" \
    -d "{\"message\":\"$commit_msg\",\"content\":\"$CONTENT\",\"branch\":\"$branch\"}" > /dev/null

  RESULT=$(curl -s -X POST -H "Authorization: token $TOKEN" \
    -H "Content-Type: application/json" \
    "https://api.github.com/repos/$REPO/pulls" \
    -d "{\"title\":\"$title\",\"body\":\"$body\",\"head\":\"$branch\",\"base\":\"$BASE\"}" \
    | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('number','ERR'))" 2>/dev/null)

  if [[ "$RESULT" =~ ^[0-9]+$ ]]; then
    echo "✅ PR #$RESULT: $title"
    SUCCESS=$((SUCCESS + 1))
  else
    echo "❌ Failed: $title"
  fi
done

echo "Done! $SUCCESS/7 remaining PRs created."
