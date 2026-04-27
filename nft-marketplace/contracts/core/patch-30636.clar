;; fix off-by-one error in timelock-executor
(define-public (patch-30636 (input uint))
  (begin
    (asserts! (> input u0) (err u30636))
    (ok input)))
