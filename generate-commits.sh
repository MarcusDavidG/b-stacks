#!/bin/bash

# Stacks Builder Rewards - 250 Commit Generator
# Creates 5 mini projects with meaningful commits

set -e
cd "$(dirname "$0")"

echo "Starting project generation with 250 commits..."

# Project 1: Token Vault (50 commits)
echo "Creating Token Vault project..."
mkdir -p token-vault/contracts token-vault/tests

cat > token-vault/Clarinet.toml << 'EOF'
[project]
name = "token-vault"
requirements = []

[contracts.token-vault]
path = "contracts/token-vault.clar"
EOF

git add token-vault/Clarinet.toml
git commit -m "feat(token-vault): initialize Clarinet project"

cat > token-vault/contracts/token-vault.clar << 'EOF'
;; Token Vault Contract
;; Secure time-locked token storage

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add contract skeleton and constants"

cat >> token-vault/contracts/token-vault.clar << 'EOF'

(define-constant err-not-found (err u404))
(define-constant err-locked (err u403))
(define-constant err-insufficient-balance (err u402))
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add error constants"

cat >> token-vault/contracts/token-vault.clar << 'EOF'

(define-data-var vault-nonce uint u0)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add vault nonce counter"

cat >> token-vault/contracts/token-vault.clar << 'EOF'

(define-map vaults 
  { owner: principal, vault-id: uint }
  { amount: uint, unlock-height: uint }
)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add vaults data map"

cat >> token-vault/contracts/token-vault.clar << 'EOF'

(define-public (create-vault (amount uint) (lock-blocks uint))
  (let ((vault-id (var-get vault-nonce)))
    (ok vault-id)
  )
)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add create-vault function skeleton"

cat > token-vault/contracts/token-vault.clar << 'EOF'
;; Token Vault Contract
;; Secure time-locked token storage

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-found (err u404))
(define-constant err-locked (err u403))
(define-constant err-insufficient-balance (err u402))

(define-data-var vault-nonce uint u0)

(define-map vaults 
  { owner: principal, vault-id: uint }
  { amount: uint, unlock-height: uint }
)

(define-public (create-vault (amount uint) (lock-blocks uint))
  (let ((vault-id (var-get vault-nonce)))
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (ok vault-id)
  )
)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): implement STX transfer in create-vault"

cat > token-vault/contracts/token-vault.clar << 'EOF'
;; Token Vault Contract
;; Secure time-locked token storage

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-found (err u404))
(define-constant err-locked (err u403))
(define-constant err-insufficient-balance (err u402))

(define-data-var vault-nonce uint u0)

(define-map vaults 
  { owner: principal, vault-id: uint }
  { amount: uint, unlock-height: uint }
)

(define-public (create-vault (amount uint) (lock-blocks uint))
  (let ((vault-id (var-get vault-nonce)))
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (map-set vaults 
      { owner: tx-sender, vault-id: vault-id }
      { amount: amount, unlock-height: (+ block-height lock-blocks) }
    )
    (var-set vault-nonce (+ vault-id u1))
    (ok vault-id)
  )
)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): complete create-vault with map storage"

cat >> token-vault/contracts/token-vault.clar << 'EOF'

(define-public (withdraw (vault-id uint))
  (ok true)
)
EOF

git add token-vault/contracts/token-vault.clar
git commit -m "feat(token-vault): add withdraw function skeleton"
