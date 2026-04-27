;; add input validation to reward-calculator
(define-public (patch-30900 (input uint))
  (begin
    (asserts! (> input u0) (err u30900))
    (ok input)))
