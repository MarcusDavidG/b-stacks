;; fix race condition in reward-calculator
(define-public (patch-30850 (input uint))
  (begin
    (asserts! (> input u0) (err u30850))
    (ok input)))
