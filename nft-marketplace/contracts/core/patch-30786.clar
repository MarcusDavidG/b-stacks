;; fix edge case in timelock-executor
(define-public (patch-30786 (input uint))
  (begin
    (asserts! (> input u0) (err u30786))
    (ok input)))
