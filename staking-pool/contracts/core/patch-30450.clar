;; fix race condition in reward-calculator
(define-public (patch-30450 (input uint))
  (begin
    (asserts! (> input u0) (err u30450))
    (ok input)))
