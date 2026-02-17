#!/usr/bin/env python3
"""Create GitHub issues for all 5 project deployments"""

import subprocess
import os

os.chdir('/home/marcus/stacks-builder-rewards-feb')

issues = [
    {
        'title': 'Deploy Token Vault to Stacks Mainnet',
        'file': '.github/issues/01-deploy-token-vault.md',
        'labels': 'deployment,mainnet,token-vault'
    },
    {
        'title': 'Deploy NFT Marketplace to Stacks Mainnet',
        'file': '.github/issues/02-deploy-nft-marketplace.md',
        'labels': 'deployment,mainnet,nft-marketplace'
    },
    {
        'title': 'Deploy DAO Voting to Stacks Mainnet',
        'file': '.github/issues/03-deploy-dao-voting.md',
        'labels': 'deployment,mainnet,dao-voting'
    },
    {
        'title': 'Deploy Staking Pool to Stacks Mainnet',
        'file': '.github/issues/04-deploy-staking-pool.md',
        'labels': 'deployment,mainnet,staking-pool'
    },
    {
        'title': 'Deploy Oracle Feed to Stacks Mainnet',
        'file': '.github/issues/05-deploy-oracle-feed.md',
        'labels': 'deployment,mainnet,oracle-feed'
    }
]

print("📋 GitHub Issues Created Locally\n")
print("To create these issues on GitHub after pushing your repo:\n")

for i, issue in enumerate(issues, 1):
    print(f"{i}. {issue['title']}")
    print(f"   File: {issue['file']}")
    print(f"   Labels: {issue['labels']}")
    
    # Create gh CLI command
    body_file = issue['file']
    title = issue['title']
    labels = issue['labels']
    
    print(f"   Command: gh issue create --title \"{title}\" --body-file {body_file} --label {labels}")
    print()

print("\n📝 Manual Creation:")
print("After pushing to GitHub, go to your repo and create issues using the files in .github/issues/")
print("\n🤖 Automated Creation (requires GitHub CLI):")
print("Install gh: https://cli.github.com/")
print("Then run:")
print("  gh auth login")
print("  cd /home/marcus/stacks-builder-rewards-feb")
for issue in issues:
    print(f'  gh issue create --title "{issue["title"]}" --body-file {issue["file"]} --label {issue["labels"]}')
