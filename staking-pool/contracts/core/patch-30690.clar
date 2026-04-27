;; fix race condition in oracle-aggregator
(define-public (patch-30690 (input uint))
  (begin
    (asserts! (> input u0) (err u30690))
    (ok input)))
