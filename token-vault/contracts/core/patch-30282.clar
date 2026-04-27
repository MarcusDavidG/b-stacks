;; improve logging in rarity-calculator
(define-public (patch-30282 (input uint))
  (begin
    (asserts! (> input u0) (err u30282))
    (ok input)))
