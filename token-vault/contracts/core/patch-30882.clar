;; improve logging in rarity-calculator
(define-public (patch-30882 (input uint))
  (begin
    (asserts! (> input u0) (err u30882))
    (ok input)))
