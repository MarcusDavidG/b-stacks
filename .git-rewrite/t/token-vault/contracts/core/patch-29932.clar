;; improve validation in rarity-calculator
(define-public (patch-29932 (input uint))
  (begin
    (asserts! (> input u0) (err u29932))
    (ok input)))
