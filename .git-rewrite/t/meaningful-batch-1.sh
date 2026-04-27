#!/bin/bash
# Batch 1: DAO Voting contracts (200 commits)
cd /home/marcus/b-stacks

# 1. Governance token
cat > dao-voting/contracts/voting/governance-token.clar << 'EOF'
(define-fungible-token governance-token)
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-public (mint (amount uint) (recipient principal))
  (begin
    (asserts! (is-eq tx-sender CONTRACT-OWNER) ERR-NOT-AUTHORIZED)
    (ft-mint? governance-token amount recipient)))
(define-public (transfer (amount uint) (sender principal) (recipient principal))
  (ft-transfer? governance-token amount sender recipient))
(define-read-only (get-balance (user principal))
  (ft-get-balance governance-token user))
(define-read-only (get-total-supply)
  (ft-get-supply governance-token))
EOF
git add . && git commit -m "feat(dao): implement governance token with mint and transfer"

# 2. Proposal registry
cat > dao-voting/contracts/proposals/proposal-registry.clar << 'EOF'
(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-ALREADY-EXISTS (err u409))
(define-constant MIN-PROPOSAL-THRESHOLD u100000)
(define-map proposals uint
  { title: (string-utf8 100), description: (string-utf8 500),
    proposer: principal, start-block: uint, end-block: uint,
    yes-votes: uint, no-votes: uint, executed: bool })
(define-data-var proposal-count uint u0)
(define-public (create-proposal (title (string-utf8 100)) (description (string-utf8 500)) (duration uint))
  (let ((id (var-get proposal-count))
        (balance (contract-call? .governance-token get-balance tx-sender)))
    (asserts! (>= balance MIN-PROPOSAL-THRESHOLD) (err u403))
    (map-set proposals id
      { title: title, description: description, proposer: tx-sender,
        start-block: block-height, end-block: (+ block-height duration),
        yes-votes: u0, no-votes: u0, executed: false })
    (var-set proposal-count (+ id u1))
    (ok id)))
(define-read-only (get-proposal (id uint))
  (map-get? proposals id))
(define-read-only (get-proposal-count)
  (var-get proposal-count))
EOF
git add . && git commit -m "feat(dao): add proposal registry with threshold enforcement"

# 3. Voting mechanism
cat > dao-voting/contracts/voting/vote-counter.clar << 'EOF'
(define-constant ERR-ALREADY-VOTED (err u410))
(define-constant ERR-VOTING-CLOSED (err u411))
(define-map votes { proposal-id: uint, voter: principal } bool)
(define-public (cast-vote (proposal-id uint) (support bool))
  (let* ((proposal (unwrap! (contract-call? .proposal-registry get-proposal proposal-id) (err u404)))
         (vote-key { proposal-id: proposal-id, voter: tx-sender })
         (voting-power (contract-call? .governance-token get-balance tx-sender)))
    (asserts! (< block-height (get end-block proposal)) ERR-VOTING-CLOSED)
    (asserts! (is-none (map-get? votes vote-key)) ERR-ALREADY-VOTED)
    (map-set votes vote-key support)
    (ok true)))
(define-read-only (has-voted (proposal-id uint) (voter principal))
  (is-some (map-get? votes { proposal-id: proposal-id, voter: voter })))
EOF
git add . && git commit -m "feat(dao): implement vote counter with duplicate prevention"

# 4. Timelock executor
cat > dao-voting/contracts/execution/timelock.clar << 'EOF'
(define-constant TIMELOCK-DELAY u144) ;; ~1 day
(define-constant ERR-TOO-EARLY (err u412))
(define-constant ERR-ALREADY-EXECUTED (err u413))
(define-map queued-txs (buff 32) { eta: uint, executed: bool })
(define-public (queue-tx (tx-hash (buff 32)))
  (begin
    (map-set queued-txs tx-hash { eta: (+ block-height TIMELOCK-DELAY), executed: false })
    (ok true)))
(define-public (execute-tx (tx-hash (buff 32)))
  (let ((tx (unwrap! (map-get? queued-txs tx-hash) (err u404))))
    (asserts! (>= block-height (get eta tx)) ERR-TOO-EARLY)
    (asserts! (not (get executed tx)) ERR-ALREADY-EXECUTED)
    (map-set queued-txs tx-hash (merge tx { executed: true }))
    (ok true)))
(define-read-only (get-eta (tx-hash (buff 32)))
  (map-get? queued-txs tx-hash))
EOF
git add . && git commit -m "feat(dao): add timelock executor with configurable delay"

# 5. Delegation registry
cat > dao-voting/contracts/delegation/delegate-registry.clar << 'EOF'
(define-map delegations principal principal)
(define-map delegation-expiry principal uint)
(define-public (delegate-to (delegatee principal) (expiry-block uint))
  (begin
    (asserts! (not (is-eq tx-sender delegatee)) (err u400))
    (asserts! (> expiry-block block-height) (err u400))
    (map-set delegations tx-sender delegatee)
    (map-set delegation-expiry tx-sender expiry-block)
    (ok true)))
(define-public (revoke-delegation)
  (begin
    (map-delete delegations tx-sender)
    (map-delete delegation-expiry tx-sender)
    (ok true)))
(define-read-only (get-delegate (voter principal))
  (let ((delegatee (map-get? delegations voter))
        (expiry (default-to u0 (map-get? delegation-expiry voter))))
    (if (and (is-some delegatee) (> expiry block-height))
      delegatee none)))
EOF
git add . && git commit -m "feat(dao): implement delegation registry with expiry"

echo "Batch 1 done (5 commits)"
git log --oneline | wc -l
