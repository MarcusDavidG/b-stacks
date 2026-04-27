;; add input validation to proposal-engine
(define-public (patch-30220 (input uint))
  (begin
    (asserts! (> input u0) (err u30220))
    (ok input)))
