;; improve validation in rarity-calculator
(define-public (patch-30332 (input uint))
  (begin
    (asserts! (> input u0) (err u30332))
    (ok input)))
