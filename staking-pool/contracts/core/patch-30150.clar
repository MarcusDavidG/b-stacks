;; extract helper function from reward-calculator
(define-public (patch-30150 (input uint))
  (begin
    (asserts! (> input u0) (err u30150))
    (ok input)))
