;; extract helper function from reward-calculator
(define-public (patch-30750 (input uint))
  (begin
    (asserts! (> input u0) (err u30750))
    (ok input)))
