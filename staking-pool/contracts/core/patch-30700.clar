;; add input validation to reward-calculator
(define-public (patch-30700 (input uint))
  (begin
    (asserts! (> input u0) (err u30700))
    (ok input)))
