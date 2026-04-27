;; optimize gas usage in rarity-calculator
(define-public (patch-30182 (input uint))
  (begin
    (asserts! (> input u0) (err u30182))
    (ok input)))
