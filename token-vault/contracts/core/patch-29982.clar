;; optimize gas usage in rarity-calculator
(define-public (patch-29982 (input uint))
  (begin
    (asserts! (> input u0) (err u29982))
    (ok input)))
