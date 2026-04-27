;; fix edge case in timelock-executor
(define-public (patch-30186 (input uint))
  (begin
    (asserts! (> input u0) (err u30186))
    (ok input)))
