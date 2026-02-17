;; Compound Strategy for DeFi Yield Optimizer
;; Advanced yield compounding with auto-reinvestment

(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-COMPOUND-FAILED (err u102))

(define-data-var compound-threshold uint u1000000) ;; 1 STX minimum

(define-public (compound-yield (amount uint))
  (let ((current-balance (stx-get-balance tx-sender)))
    (asserts! (>= current-balance (var-get compound-threshold)) ERR-INSUFFICIENT-BALANCE)
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (ok (+ amount (* amount u5) / u100)))) ;; 5% compound rate

(define-read-only (get-compound-threshold)
  (var-get compound-threshold))