;; update API docs for rarity-calculator
(define-public (patch-30032 (input uint))
  (begin
    (asserts! (> input u0) (err u30032))
    (ok input)))
