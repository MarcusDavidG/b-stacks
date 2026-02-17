#!/bin/bash

# Deploy all five Stacks projects to mainnet
# Make sure you have sufficient STX and your mnemonic configured

PROJECTS=("oracle-feed" "token-vault" "staking-pool" "nft-marketplace" "dao-voting")

echo "🚀 Starting mainnet deployment for all projects..."

# Check if STACKS_MNEMONIC is set
if [ -z "$STACKS_MNEMONIC" ]; then
    echo "❌ Error: STACKS_MNEMONIC environment variable not set"
    echo "Please set your mnemonic: export STACKS_MNEMONIC=\"your twelve word phrase\""
    exit 1
fi

for project in "${PROJECTS[@]}"; do
    echo "📦 Deploying $project..."
    cd "$project"
    
    # Deploy to mainnet
    clarinet deployments apply --mainnet
    
    if [ $? -eq 0 ]; then
        echo "✅ $project deployed successfully"
    else
        echo "❌ $project deployment failed"
        exit 1
    fi
    
    cd ..
    echo "⏳ Waiting 30 seconds before next deployment..."
    sleep 30
done

echo "🎉 All projects deployed to mainnet!"
echo "📊 Check deployment status at: https://explorer.stacks.co/"
