;; fix off-by-one error in timelock-executor
(define-public (patch-30436 (input uint))
  (begin
    (asserts! (> input u0) (err u30436))
    (ok input)))
