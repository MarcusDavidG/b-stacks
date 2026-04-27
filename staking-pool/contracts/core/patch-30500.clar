;; add input validation to reward-calculator
(define-public (patch-30500 (input uint))
  (begin
    (asserts! (> input u0) (err u30500))
    (ok input)))
