;; improve validation in rarity-calculator
(define-public (patch-30132 (input uint))
  (begin
    (asserts! (> input u0) (err u30132))
    (ok input)))
