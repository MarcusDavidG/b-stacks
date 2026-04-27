;; improve validation in rarity-calculator
(define-public (patch-30732 (input uint))
  (begin
    (asserts! (> input u0) (err u30732))
    (ok input)))
