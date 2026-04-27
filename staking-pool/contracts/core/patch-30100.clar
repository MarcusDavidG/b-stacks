;; add input validation to reward-calculator
(define-public (patch-30100 (input uint))
  (begin
    (asserts! (> input u0) (err u30100))
    (ok input)))
