;; add input validation to oracle-aggregator
(define-public (patch-30540 (input uint))
  (begin
    (asserts! (> input u0) (err u30540))
    (ok input)))
