;; fix race condition in oracle-aggregator
(define-public (patch-30490 (input uint))
  (begin
    (asserts! (> input u0) (err u30490))
    (ok input)))
