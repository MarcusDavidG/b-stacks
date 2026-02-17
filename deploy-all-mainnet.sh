#!/bin/bash

# Deploy all five Stacks projects to mainnet
# Make sure you have sufficient STX and your private key configured

PROJECTS=("staking-pool" "nft-marketplace" "token-vault" "oracle-feed" "dao-voting")

echo "Starting mainnet deployment for all projects..."

for project in "${PROJECTS[@]}"; do
    echo "Deploying $project..."
    cd "$project"
    
    # Create mainnet deployment if it doesn't exist
    if [ ! -f "deployments/mainnet.yaml" ]; then
        mkdir -p deployments
        cat > deployments/mainnet.yaml << EOF
stacks:
  mainnet:
    enabled: true
EOF
    fi
    
    # Deploy to mainnet
    clarinet deployments apply --deployment mainnet
    
    if [ $? -eq 0 ]; then
        echo "✅ $project deployed successfully"
    else
        echo "❌ $project deployment failed"
        exit 1
    fi
    
    cd ..
done

echo "🎉 All projects deployed to mainnet!"
