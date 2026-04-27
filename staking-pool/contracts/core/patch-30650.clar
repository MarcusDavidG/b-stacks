;; fix race condition in reward-calculator
(define-public (patch-30650 (input uint))
  (begin
    (asserts! (> input u0) (err u30650))
    (ok input)))
