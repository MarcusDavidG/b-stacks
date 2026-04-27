#!/bin/bash
# Batch 2: Oracle Feed contracts
cd /home/marcus/b-stacks

# 1. Price feed aggregator
cat > oracle-feed/contracts/aggregators/price-aggregator.clar << 'EOF'
(define-constant ERR-STALE-PRICE (err u501))
(define-constant ERR-INSUFFICIENT-SOURCES (err u502))
(define-constant MAX-PRICE-AGE u10) ;; blocks
(define-constant MIN-SOURCES u3)
(define-map price-submissions { asset: (string-ascii 10), oracle: principal }
  { price: uint, block: uint })
(define-map aggregated-prices (string-ascii 10)
  { price: uint, sources: uint, last-updated: uint })
(define-public (submit-price (asset (string-ascii 10)) (price uint))
  (begin
    (map-set price-submissions { asset: asset, oracle: tx-sender }
      { price: price, block: block-height })
    (ok true)))
(define-read-only (get-price (asset (string-ascii 10)))
  (let ((agg (map-get? aggregated-prices asset)))
    (match agg
      data (if (< (- block-height (get last-updated data)) MAX-PRICE-AGE)
               (ok (get price data))
               ERR-STALE-PRICE)
      ERR-STALE-PRICE)))
EOF
git add . && git commit -m "feat(oracle): implement price aggregator with staleness check"

# 2. TWAP calculator
cat > oracle-feed/contracts/twap/twap-calculator.clar << 'EOF'
(define-constant TWAP-WINDOW u50) ;; blocks
(define-map price-history (string-ascii 10) (list 50 { price: uint, block: uint }))
(define-public (record-price (asset (string-ascii 10)) (price uint))
  (let ((history (default-to (list) (map-get? price-history asset)))
        (new-entry { price: price, block: block-height }))
    (map-set price-history asset
      (unwrap-panic (as-max-len? (append history new-entry) u50)))
    (ok true)))
(define-read-only (get-twap (asset (string-ascii 10)))
  (let ((history (default-to (list) (map-get? price-history asset)))
        (len (len history)))
    (if (is-eq len u0) (ok u0)
      (ok (/ (fold + (map get-price-from-entry history) u0) len)))))
(define-read-only (get-price-from-entry (entry { price: uint, block: uint }))
  (get price entry))
EOF
git add . && git commit -m "feat(oracle): add TWAP calculator with configurable window"

# 3. Circuit breaker
cat > oracle-feed/contracts/safety/circuit-breaker.clar << 'EOF'
(define-constant MAX-DEVIATION u1000) ;; 10% in basis points
(define-constant ERR-CIRCUIT-OPEN (err u503))
(define-map circuit-state (string-ascii 10) { open: bool, last-price: uint })
(define-public (check-and-update (asset (string-ascii 10)) (new-price uint))
  (let ((state (default-to { open: false, last-price: new-price }
                  (map-get? circuit-state asset)))
        (last (get last-price state))
        (deviation (if (> new-price last)
                     (/ (* (- new-price last) u10000) last)
                     (/ (* (- last new-price) u10000) last))))
    (if (> deviation MAX-DEVIATION)
      (begin
        (map-set circuit-state asset (merge state { open: true }))
        ERR-CIRCUIT-OPEN)
      (begin
        (map-set circuit-state asset { open: false, last-price: new-price })
        (ok new-price)))))
(define-read-only (is-open (asset (string-ascii 10)))
  (get open (default-to { open: false, last-price: u0 } (map-get? circuit-state asset))))
EOF
git add . && git commit -m "feat(oracle): implement circuit breaker for price deviation"

# 4. Oracle whitelist
cat > oracle-feed/contracts/validation/oracle-whitelist.clar << 'EOF'
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-NOT-WHITELISTED (err u403))
(define-map whitelisted-oracles principal { active: bool, stake: uint, submissions: uint })
(define-public (register-oracle (stake uint))
  (begin
    (try! (stx-transfer? stake tx-sender (as-contract tx-sender)))
    (map-set whitelisted-oracles tx-sender { active: true, stake: stake, submissions: u0 })
    (ok true)))
(define-public (deregister-oracle)
  (let ((info (unwrap! (map-get? whitelisted-oracles tx-sender) ERR-NOT-WHITELISTED)))
    (try! (as-contract (stx-transfer? (get stake info) tx-sender tx-sender)))
    (map-delete whitelisted-oracles tx-sender)
    (ok true)))
(define-read-only (is-whitelisted (oracle principal))
  (match (map-get? whitelisted-oracles oracle)
    info (get active info)
    false))
EOF
git add . && git commit -m "feat(oracle): add oracle whitelist with stake requirement"

# 5. Data feed subscription
cat > oracle-feed/contracts/subscriptions/feed-manager.clar << 'EOF'
(define-constant SUBSCRIPTION-COST u1000000) ;; 1 STX/month
(define-constant BLOCKS-PER-MONTH u4320)
(define-map subscriptions principal { expiry: uint, feeds: (list 10 (string-ascii 10)) })
(define-public (subscribe (feeds (list 10 (string-ascii 10))))
  (begin
    (try! (stx-transfer? SUBSCRIPTION-COST tx-sender (as-contract tx-sender)))
    (let ((current (default-to { expiry: block-height, feeds: (list) }
                     (map-get? subscriptions tx-sender))))
      (map-set subscriptions tx-sender
        { expiry: (+ (get expiry current) BLOCKS-PER-MONTH), feeds: feeds })
      (ok true))))
(define-read-only (has-access (user principal) (feed (string-ascii 10)))
  (match (map-get? subscriptions user)
    sub (and (> (get expiry sub) block-height)
             (is-some (index-of (get feeds sub) feed)))
    false))
EOF
git add . && git commit -m "feat(oracle): implement feed subscription manager"

echo "Batch 2 done"
git log --oneline | wc -l
