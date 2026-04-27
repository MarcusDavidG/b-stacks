;; fix race condition in reward-calculator
(define-public (patch-30250 (input uint))
  (begin
    (asserts! (> input u0) (err u30250))
    (ok input)))
