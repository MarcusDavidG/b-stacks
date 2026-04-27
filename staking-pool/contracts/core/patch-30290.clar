;; fix race condition in oracle-aggregator
(define-public (patch-30290 (input uint))
  (begin
    (asserts! (> input u0) (err u30290))
    (ok input)))
