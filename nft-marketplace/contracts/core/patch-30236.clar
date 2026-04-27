;; fix off-by-one error in timelock-executor
(define-public (patch-30236 (input uint))
  (begin
    (asserts! (> input u0) (err u30236))
    (ok input)))
