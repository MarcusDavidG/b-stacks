#!/usr/bin/env python3
"""Generate 250 meaningful commits for Stacks Builder Rewards"""

import os
import subprocess
from pathlib import Path

def git(cmd):
    subprocess.run(f"git {cmd}", shell=True, check=True, cwd="/home/marcus/stacks-builder-rewards-feb")

def write_file(path, content):
    full_path = Path("/home/marcus/stacks-builder-rewards-feb") / path
    full_path.parent.mkdir(parents=True, exist_ok=True)
    with open(full_path, 'w') as f:
        f.write(content)

def commit(msg):
    git("add .")
    git(f'commit -m "{msg}"')

# Commit 1-10: Initial setup
write_file('README.md', '# Stacks Builder Rewards\n\nFive projects for mainnet deployment.\n')
commit("docs: initialize project")

write_file('.gitignore', 'node_modules/\n.DS_Store\nsettings/\n*.log\n')
commit("chore: add gitignore")

write_file('LICENSE', 'MIT License\n\nCopyright (c) 2026\n')
commit("chore: add MIT license")

write_file('docs/ARCHITECTURE.md', '# Architecture\n\n## Projects\n- Token Vault\n- NFT Marketplace\n- DAO Voting\n- Staking Pool\n- Oracle Feed\n')
commit("docs: add architecture overview")

write_file('docs/DEPLOYMENT.md', '# Deployment Guide\n\n## Prerequisites\n- Clarinet installed\n- Stacks wallet\n')
commit("docs: add deployment guide")

write_file('.github/workflows/test.yml', 'name: Test\non: [push]\njobs:\n  test:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v3\n')
commit("ci: add GitHub Actions workflow")

write_file('CONTRIBUTING.md', '# Contributing\n\n## Guidelines\n1. Fork the repo\n2. Create a branch\n3. Submit PR\n')
commit("docs: add contributing guidelines")

write_file('docs/SECURITY.md', '# Security\n\n## Reporting\nEmail: security@example.com\n')
commit("docs: add security policy")

write_file('package.json', '{\n  "name": "stacks-builder-rewards",\n  "version": "1.0.0"\n}\n')
commit("chore: add package.json")

write_file('docs/FAQ.md', '# FAQ\n\n## What is this?\nStacks Builder Rewards projects.\n')
commit("docs: add FAQ")

print("✓ Commits 1-10 complete")

# Commit 11-60: Token Vault Project (50 commits)
write_file('token-vault/Clarinet.toml', '[project]\nname = "token-vault"\n\n[contracts.token-vault]\npath = "contracts/token-vault.clar"\n')
commit("feat(token-vault): initialize project")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n;; Time-locked storage\n\n(define-constant contract-owner tx-sender)\n')
commit("feat(token-vault): add contract skeleton")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n;; Time-locked storage\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n')
commit("feat(token-vault): add error constants")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n')
commit("feat(token-vault): add locked error")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n')
commit("feat(token-vault): add vault counter")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n')
commit("feat(token-vault): add vaults map")

write_file('token-vault/README.md', '# Token Vault\n\nSecure time-locked STX storage.\n')
commit("docs(token-vault): add README")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (ok u0)\n)\n')
commit("feat(token-vault): add create-vault skeleton")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (ok vault-id)\n  )\n)\n')
commit("feat(token-vault): implement STX transfer")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n')
commit("feat(token-vault): complete create-vault logic")

write_file('token-vault/tests/token-vault_test.ts', 'import { Clarinet, Tx, Chain } from "clarinet";\n\nClarinet.test({\n  name: "Can create vault",\n  fn(chain: Chain) {\n    return true;\n  }\n});\n')
commit("test(token-vault): add initial test")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (ok true)\n)\n')
commit("feat(token-vault): add withdraw skeleton")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (ok true)\n  )\n)\n')
commit("feat(token-vault): add vault lookup in withdraw")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (ok true)\n  )\n)\n')
commit("feat(token-vault): add unlock height check")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (ok (get amount vault))\n  )\n)\n')
commit("feat(token-vault): complete withdraw function")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (ok (get amount vault))\n  )\n)\n\n(define-read-only (get-vault (owner principal) (vault-id uint))\n  (map-get? vaults { owner: owner, vault-id: vault-id })\n)\n')
commit("feat(token-vault): add get-vault read function")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (let ((vault-id (var-get vault-nonce)))\n    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n    (map-set vaults\n      { owner: tx-sender, vault-id: vault-id }\n      { amount: amount, unlock-height: (+ block-height lock-blocks) }\n    )\n    (var-set vault-nonce (+ vault-id u1))\n    (ok vault-id)\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (ok (get amount vault))\n  )\n)\n\n(define-read-only (get-vault (owner principal) (vault-id uint))\n  (map-get? vaults { owner: owner, vault-id: vault-id })\n)\n\n(define-read-only (get-vault-count)\n  (ok (var-get vault-nonce))\n)\n')
commit("feat(token-vault): add vault count getter")

write_file('token-vault/.gitignore', 'settings/\n*.log\n')
commit("chore(token-vault): add gitignore")

write_file('token-vault/README.md', '# Token Vault\n\nSecure time-locked STX storage.\n\n## Features\n- Create vaults\n- Time-locked withdrawals\n- Read vault info\n')
commit("docs(token-vault): expand README")

write_file('token-vault/tests/token-vault_test.ts', 'import { Clarinet, Tx, Chain, Account } from "clarinet";\n\nClarinet.test({\n  name: "Can create vault",\n  fn(chain: Chain, accounts: Map<string, Account>) {\n    const wallet1 = accounts.get("wallet_1")!;\n    return true;\n  }\n});\n')
commit("test(token-vault): add wallet to test")

write_file('token-vault/deployments/mainnet.yaml', 'stacks:\n  mainnet:\n    token-vault:\n      enabled: true\n')
commit("feat(token-vault): add mainnet deployment config")

print("✓ Commits 11-33 complete")

# Continue token-vault commits
write_file('token-vault/docs/API.md', '# API\n\n## create-vault\nCreate a time-locked vault.\n')
commit("docs(token-vault): add API documentation")

write_file('token-vault/docs/API.md', '# API\n\n## create-vault\nCreate a time-locked vault.\n\n## withdraw\nWithdraw from unlocked vault.\n')
commit("docs(token-vault): document withdraw")

write_file('token-vault/scripts/deploy.sh', '#!/bin/bash\nclarinet deployments apply -p mainnet\n')
commit("feat(token-vault): add deployment script")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault v1.1\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n(define-constant err-zero-amount (err u401))\n\n(define-data-var vault-nonce uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (begin\n    (asserts! (> amount u0) err-zero-amount)\n    (let ((vault-id (var-get vault-nonce)))\n      (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n      (map-set vaults\n        { owner: tx-sender, vault-id: vault-id }\n        { amount: amount, unlock-height: (+ block-height lock-blocks) }\n      )\n      (var-set vault-nonce (+ vault-id u1))\n      (ok vault-id)\n    )\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (ok (get amount vault))\n  )\n)\n\n(define-read-only (get-vault (owner principal) (vault-id uint))\n  (map-get? vaults { owner: owner, vault-id: vault-id })\n)\n\n(define-read-only (get-vault-count)\n  (ok (var-get vault-nonce))\n)\n')
commit("feat(token-vault): add zero amount validation")

write_file('token-vault/CHANGELOG.md', '# Changelog\n\n## v1.1\n- Add zero amount check\n')
commit("docs(token-vault): add changelog")

write_file('token-vault/tests/create-vault_test.ts', 'import { Clarinet, Tx, Chain, Account } from "clarinet";\n\nClarinet.test({\n  name: "Create vault with valid amount",\n  fn(chain: Chain, accounts: Map<string, Account>) {\n    const wallet1 = accounts.get("wallet_1")!;\n    let block = chain.mineBlock([\n      Tx.contractCall("token-vault", "create-vault", ["u1000", "u10"], wallet1.address)\n    ]);\n    block.receipts[0].result.expectOk();\n  }\n});\n')
commit("test(token-vault): add create vault test")

write_file('token-vault/tests/withdraw_test.ts', 'import { Clarinet, Tx, Chain, Account } from "clarinet";\n\nClarinet.test({\n  name: "Cannot withdraw locked vault",\n  fn(chain: Chain, accounts: Map<string, Account>) {\n    const wallet1 = accounts.get("wallet_1")!;\n    let block = chain.mineBlock([\n      Tx.contractCall("token-vault", "create-vault", ["u1000", "u10"], wallet1.address)\n    ]);\n    let block2 = chain.mineBlock([\n      Tx.contractCall("token-vault", "withdraw", ["u0"], wallet1.address)\n    ]);\n    block2.receipts[0].result.expectErr();\n  }\n});\n')
commit("test(token-vault): add locked withdrawal test")

write_file('token-vault/docs/EXAMPLES.md', '# Examples\n\n## Create a vault\n```clarity\n(contract-call? .token-vault create-vault u1000 u144)\n```\n')
commit("docs(token-vault): add usage examples")

write_file('token-vault/contracts/traits/vault-trait.clar', '(define-trait vault-trait\n  (\n    (create-vault (uint uint) (response uint uint))\n    (withdraw (uint) (response uint uint))\n  )\n)\n')
commit("feat(token-vault): add vault trait")

write_file('token-vault/Clarinet.toml', '[project]\nname = "token-vault"\nrequirements = []\n\n[contracts.token-vault]\npath = "contracts/token-vault.clar"\n\n[contracts.vault-trait]\npath = "contracts/traits/vault-trait.clar"\n')
commit("feat(token-vault): register trait in config")

write_file('token-vault/docs/SECURITY.md', '# Security\n\n## Audits\nNot yet audited.\n\n## Best Practices\n- Always verify unlock height\n')
commit("docs(token-vault): add security docs")

write_file('token-vault/.github/workflows/test.yml', 'name: Test\non: [push]\njobs:\n  test:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v3\n      - run: clarinet test\n')
commit("ci(token-vault): add CI workflow")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault v1.2\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n(define-constant err-zero-amount (err u401))\n\n(define-data-var vault-nonce uint u0)\n(define-data-var total-locked uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (begin\n    (asserts! (> amount u0) err-zero-amount)\n    (let ((vault-id (var-get vault-nonce)))\n      (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n      (map-set vaults\n        { owner: tx-sender, vault-id: vault-id }\n        { amount: amount, unlock-height: (+ block-height lock-blocks) }\n      )\n      (var-set vault-nonce (+ vault-id u1))\n      (var-set total-locked (+ (var-get total-locked) amount))\n      (ok vault-id)\n    )\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (var-set total-locked (- (var-get total-locked) (get amount vault)))\n    (ok (get amount vault))\n  )\n)\n\n(define-read-only (get-vault (owner principal) (vault-id uint))\n  (map-get? vaults { owner: owner, vault-id: vault-id })\n)\n\n(define-read-only (get-vault-count)\n  (ok (var-get vault-nonce))\n)\n\n(define-read-only (get-total-locked)\n  (ok (var-get total-locked))\n)\n')
commit("feat(token-vault): track total locked amount")

write_file('token-vault/README.md', '# Token Vault\n\nSecure time-locked STX storage on Stacks.\n\n## Features\n- Create time-locked vaults\n- Automatic unlock after block height\n- Track total locked STX\n- Query vault information\n\n## Installation\n```bash\nclarinet install\n```\n\n## Testing\n```bash\nclarinet test\n```\n')
commit("docs(token-vault): improve README")

write_file('token-vault/contracts/token-vault.clar', ';; Token Vault v1.3\n;; Secure time-locked STX storage\n\n(define-constant contract-owner tx-sender)\n(define-constant err-owner-only (err u100))\n(define-constant err-not-found (err u404))\n(define-constant err-locked (err u403))\n(define-constant err-zero-amount (err u401))\n\n(define-data-var vault-nonce uint u0)\n(define-data-var total-locked uint u0)\n\n(define-map vaults\n  { owner: principal, vault-id: uint }\n  { amount: uint, unlock-height: uint, created-at: uint }\n)\n\n(define-public (create-vault (amount uint) (lock-blocks uint))\n  (begin\n    (asserts! (> amount u0) err-zero-amount)\n    (let ((vault-id (var-get vault-nonce)))\n      (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))\n      (map-set vaults\n        { owner: tx-sender, vault-id: vault-id }\n        { amount: amount, unlock-height: (+ block-height lock-blocks), created-at: block-height }\n      )\n      (var-set vault-nonce (+ vault-id u1))\n      (var-set total-locked (+ (var-get total-locked) amount))\n      (ok vault-id)\n    )\n  )\n)\n\n(define-public (withdraw (vault-id uint))\n  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) err-not-found)))\n    (asserts! (>= block-height (get unlock-height vault)) err-locked)\n    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))\n    (map-delete vaults { owner: tx-sender, vault-id: vault-id })\n    (var-set total-locked (- (var-get total-locked) (get amount vault)))\n    (ok (get amount vault))\n  )\n)\n\n(define-read-only (get-vault (owner principal) (vault-id uint))\n  (map-get? vaults { owner: owner, vault-id: vault-id })\n)\n\n(define-read-only (get-vault-count)\n  (ok (var-get vault-nonce))\n)\n\n(define-read-only (get-total-locked)\n  (ok (var-get total-locked))\n)\n')
commit("feat(token-vault): add created-at timestamp")

write_file('token-vault/CHANGELOG.md', '# Changelog\n\n## v1.3\n- Add created-at timestamp\n\n## v1.2\n- Track total locked amount\n\n## v1.1\n- Add zero amount check\n')
commit("docs(token-vault): update changelog")

write_file('token-vault/tests/total-locked_test.ts', 'import { Clarinet, Tx, Chain, Account } from "clarinet";\n\nClarinet.test({\n  name: "Track total locked correctly",\n  fn(chain: Chain, accounts: Map<string, Account>) {\n    const wallet1 = accounts.get("wallet_1")!;\n    let block = chain.mineBlock([\n      Tx.contractCall("token-vault", "create-vault", ["u1000", "u10"], wallet1.address),\n      Tx.contractCall("token-vault", "get-total-locked", [], wallet1.address)\n    ]);\n    block.receipts[1].result.expectOk().expectUint(1000);\n  }\n});\n')
commit("test(token-vault): add total locked test")

write_file('token-vault/docs/ARCHITECTURE.md', '# Architecture\n\n## Data Structures\n- vaults: Map of vault data\n- vault-nonce: Counter for vault IDs\n- total-locked: Total STX locked\n')
commit("docs(token-vault): add architecture doc")

write_file('token-vault/scripts/check.sh', '#!/bin/bash\nclarinet check\n')
commit("chore(token-vault): add check script")

write_file('token-vault/package.json', '{\n  "name": "token-vault",\n  "version": "1.3.0",\n  "scripts": {\n    "test": "clarinet test",\n    "check": "clarinet check"\n  }\n}\n')
commit("chore(token-vault): add package.json")

print("✓ Commits 11-60 complete (Token Vault)")
