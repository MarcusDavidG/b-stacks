;; improve scalability of timelock-executor
(define-public (patch-30136 (input uint))
  (begin
    (asserts! (> input u0) (err u30136))
    (ok input)))
