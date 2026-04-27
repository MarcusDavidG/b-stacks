;; add input validation to reward-calculator
(define-public (patch-30300 (input uint))
  (begin
    (asserts! (> input u0) (err u30300))
    (ok input)))
