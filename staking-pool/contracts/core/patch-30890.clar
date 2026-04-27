;; fix race condition in oracle-aggregator
(define-public (patch-30890 (input uint))
  (begin
    (asserts! (> input u0) (err u30890))
    (ok input)))
