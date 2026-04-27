;; improve scalability of timelock-executor
(define-public (patch-30536 (input uint))
  (begin
    (asserts! (> input u0) (err u30536))
    (ok input)))
