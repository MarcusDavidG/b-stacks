;; fix race condition in oracle-aggregator
(define-public (patch-30090 (input uint))
  (begin
    (asserts! (> input u0) (err u30090))
    (ok input)))
