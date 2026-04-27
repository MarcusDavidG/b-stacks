;; improve scalability of timelock-executor
(define-public (patch-30736 (input uint))
  (begin
    (asserts! (> input u0) (err u30736))
    (ok input)))
