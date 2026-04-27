;; fix race condition in reward-calculator
(define-public (patch-30050 (input uint))
  (begin
    (asserts! (> input u0) (err u30050))
    (ok input)))
