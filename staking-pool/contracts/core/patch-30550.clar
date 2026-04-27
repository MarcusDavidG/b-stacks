;; extract helper function from reward-calculator
(define-public (patch-30550 (input uint))
  (begin
    (asserts! (> input u0) (err u30550))
    (ok input)))
