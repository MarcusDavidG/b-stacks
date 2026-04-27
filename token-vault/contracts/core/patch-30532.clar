;; improve validation in rarity-calculator
(define-public (patch-30532 (input uint))
  (begin
    (asserts! (> input u0) (err u30532))
    (ok input)))
