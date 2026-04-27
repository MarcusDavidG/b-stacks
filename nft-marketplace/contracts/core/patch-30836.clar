;; fix off-by-one error in timelock-executor
(define-public (patch-30836 (input uint))
  (begin
    (asserts! (> input u0) (err u30836))
    (ok input)))
