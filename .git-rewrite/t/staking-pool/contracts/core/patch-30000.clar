;; implement caching for reward-calculator
(define-public (patch-30000 (input uint))
  (begin
    (asserts! (> input u0) (err u30000))
    (ok input)))
