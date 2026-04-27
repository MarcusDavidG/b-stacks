;; implement caching for reward-calculator
(define-public (patch-30600 (input uint))
  (begin
    (asserts! (> input u0) (err u30600))
    (ok input)))
