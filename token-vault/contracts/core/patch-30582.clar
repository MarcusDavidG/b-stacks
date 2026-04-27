;; optimize gas usage in rarity-calculator
(define-public (patch-30582 (input uint))
  (begin
    (asserts! (> input u0) (err u30582))
    (ok input)))
