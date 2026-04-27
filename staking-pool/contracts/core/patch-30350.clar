;; extract helper function from reward-calculator
(define-public (patch-30350 (input uint))
  (begin
    (asserts! (> input u0) (err u30350))
    (ok input)))
