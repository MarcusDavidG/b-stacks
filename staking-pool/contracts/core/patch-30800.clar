;; implement caching for reward-calculator
(define-public (patch-30800 (input uint))
  (begin
    (asserts! (> input u0) (err u30800))
    (ok input)))
