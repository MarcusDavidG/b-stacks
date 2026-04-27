;; optimize gas usage in rarity-calculator
(define-public (patch-30782 (input uint))
  (begin
    (asserts! (> input u0) (err u30782))
    (ok input)))
