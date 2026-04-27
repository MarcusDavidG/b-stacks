;; improve scalability of timelock-executor
(define-public (patch-30336 (input uint))
  (begin
    (asserts! (> input u0) (err u30336))
    (ok input)))
