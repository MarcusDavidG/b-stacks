#!/usr/bin/env python3

<<<<<<< Updated upstream
import subprocess
=======
>>>>>>> Stashed changes
import json
import urllib.request
import urllib.error
import os
<<<<<<< Updated upstream

# Get GitHub token from git config
result = subprocess.run(['git', 'config', '--get', 'credential.helper'], capture_output=True, text=True)
# Try to get token from environment or netrc
token = os.environ.get('GITHUB_TOKEN', '')

if not token:
    # Try reading from git credentials
    try:
        with open(os.path.expanduser('~/.git-credentials'), 'r') as f:
            for line in f:
                if 'github.com' in line:
                    # format: https://user:token@github.com
                    token = line.strip().split(':')[2].split('@')[0]
                    break
    except:
        pass

REPO = "MarcusDavidG/b-stacks"
BRANCHES = [f"feature/batch-{i}" for i in range(1, 51)]

headers = {
    'Authorization': f'token {token}',
=======
import sys

TOKEN = os.environ.get('GITHUB_TOKEN', '')
REPO = "MarcusDavidG/b-stacks"

headers = {
    'Authorization': f'token {TOKEN}',
>>>>>>> Stashed changes
    'Content-Type': 'application/json',
    'Accept': 'application/vnd.github.v3+json'
}

<<<<<<< Updated upstream
created = 0
for i, branch in enumerate(BRANCHES, 1):
    batch_num = i
    data = json.dumps({
        "title": f"feat: batch {batch_num} - DeFi features and improvements",
        "body": f"This PR adds 40 new Clarity smart contract features from batch {batch_num} across staking, NFT, vault, oracle, and DAO projects.",
=======
DESCRIPTIONS = [
    "staking pool rewards and yield optimization",
    "NFT marketplace trading features",
    "token vault security enhancements",
    "oracle feed data aggregation",
    "DAO voting governance improvements",
    "DeFi protocol integrations",
    "smart contract optimizations",
    "cross-chain bridge features",
    "analytics and monitoring",
    "compliance and reporting"
]

created = 0
for i in range(1, 51):
    branch = f"feature/batch-{i}"
    desc = DESCRIPTIONS[(i - 1) % len(DESCRIPTIONS)]
    data = json.dumps({
        "title": f"feat: batch {i} - {desc}",
        "body": f"Adds 40 new Clarity smart contract modules for {desc}. Part of batch {i}/50.",
>>>>>>> Stashed changes
        "head": branch,
        "base": "main"
    }).encode()

    req = urllib.request.Request(
        f"https://api.github.com/repos/{REPO}/pulls",
        data=data,
        headers=headers,
        method='POST'
    )
    try:
        with urllib.request.urlopen(req) as resp:
            result = json.loads(resp.read())
            print(f"PR {i}/50 created: #{result['number']} - {branch}")
            created += 1
    except urllib.error.HTTPError as e:
        body = e.read().decode()
<<<<<<< Updated upstream
        print(f"PR {i}/50 failed for {branch}: {e.code} - {body[:100]}")
=======
        print(f"PR {i}/50 failed ({branch}): {e.code} - {body[:120]}")
>>>>>>> Stashed changes

print(f"\nDone! Created {created}/50 PRs")
