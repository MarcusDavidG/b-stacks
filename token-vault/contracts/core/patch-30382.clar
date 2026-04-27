;; optimize gas usage in rarity-calculator
(define-public (patch-30382 (input uint))
  (begin
    (asserts! (> input u0) (err u30382))
    (ok input)))
