;; Stake validation
(define-read-only (is-valid-stake (amount uint))
  (>= amount u1000000))
