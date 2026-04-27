;; fix edge case in timelock-executor
(define-public (patch-30386 (input uint))
  (begin
    (asserts! (> input u0) (err u30386))
    (ok input)))
