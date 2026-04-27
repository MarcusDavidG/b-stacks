#!/bin/bash
# Batch 3: Token Vault contracts
cd /home/marcus/b-stacks

cat > token-vault/contracts/multisig/multisig-vault.clar << 'EOF'
(define-constant ERR-NOT-SIGNER (err u301))
(define-constant ERR-ALREADY-SIGNED (err u302))
(define-constant ERR-THRESHOLD-NOT-MET (err u303))
(define-data-var threshold uint u2)
(define-map signers principal bool)
(define-map pending-txs uint { to: principal, amount: uint, signatures: uint, executed: bool })
(define-data-var tx-nonce uint u0)
(define-public (add-signer (signer principal))
  (begin
    (map-set signers signer true)
    (ok true)))
(define-public (submit-tx (to principal) (amount uint))
  (let ((id (var-get tx-nonce)))
    (asserts! (default-to false (map-get? signers tx-sender)) ERR-NOT-SIGNER)
    (map-set pending-txs id { to: to, amount: amount, signatures: u1, executed: false })
    (var-set tx-nonce (+ id u1))
    (ok id)))
(define-public (sign-tx (tx-id uint))
  (let ((tx (unwrap! (map-get? pending-txs tx-id) (err u404))))
    (asserts! (default-to false (map-get? signers tx-sender)) ERR-NOT-SIGNER)
    (asserts! (not (get executed tx)) ERR-ALREADY-SIGNED)
    (let ((new-sigs (+ (get signatures tx) u1)))
      (if (>= new-sigs (var-get threshold))
        (begin
          (try! (as-contract (stx-transfer? (get amount tx) tx-sender (get to tx))))
          (map-set pending-txs tx-id (merge tx { signatures: new-sigs, executed: true }))
          (ok true))
        (begin
          (map-set pending-txs tx-id (merge tx { signatures: new-sigs }))
          (ok false))))))
EOF
git add . && git commit -m "feat(vault): implement multisig vault with configurable threshold"

cat > token-vault/contracts/timelock/timelock-vault.clar << 'EOF'
(define-constant ERR-LOCKED (err u310))
(define-constant ERR-NOT-OWNER (err u311))
(define-map vaults uint { owner: principal, amount: uint, unlock-block: uint })
(define-data-var vault-nonce uint u0)
(define-public (create-vault (amount uint) (lock-duration uint))
  (let ((id (var-get vault-nonce)))
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (map-set vaults id
      { owner: tx-sender, amount: amount, unlock-block: (+ block-height lock-duration) })
    (var-set vault-nonce (+ id u1))
    (ok id)))
(define-public (withdraw-vault (vault-id uint))
  (let ((vault (unwrap! (map-get? vaults vault-id) (err u404))))
    (asserts! (is-eq tx-sender (get owner vault)) ERR-NOT-OWNER)
    (asserts! (>= block-height (get unlock-block vault)) ERR-LOCKED)
    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))
    (map-delete vaults vault-id)
    (ok true)))
(define-read-only (get-vault (vault-id uint))
  (map-get? vaults vault-id))
EOF
git add . && git commit -m "feat(vault): add timelock vault with configurable lock duration"

cat > token-vault/contracts/recovery/social-recovery.clar << 'EOF'
(define-constant RECOVERY-THRESHOLD u3)
(define-constant RECOVERY-DELAY u1008) ;; ~1 week
(define-map guardians principal bool)
(define-map recovery-requests principal { new-owner: principal, approvals: uint, initiated-at: uint })
(define-public (add-guardian (guardian principal))
  (begin
    (map-set guardians guardian true)
    (ok true)))
(define-public (initiate-recovery (vault-owner principal) (new-owner principal))
  (begin
    (asserts! (default-to false (map-get? guardians tx-sender)) (err u401))
    (map-set recovery-requests vault-owner
      { new-owner: new-owner, approvals: u1, initiated-at: block-height })
    (ok true)))
(define-public (approve-recovery (vault-owner principal))
  (let ((req (unwrap! (map-get? recovery-requests vault-owner) (err u404))))
    (asserts! (default-to false (map-get? guardians tx-sender)) (err u401))
    (let ((new-approvals (+ (get approvals req) u1)))
      (map-set recovery-requests vault-owner (merge req { approvals: new-approvals }))
      (ok (>= new-approvals RECOVERY-THRESHOLD)))))
EOF
git add . && git commit -m "feat(vault): implement social recovery with guardian approval"

echo "Batch 3 done"
git log --oneline | wc -l
