;; improve scalability of timelock-executor
(define-public (patch-29936 (input uint))
  (begin
    (asserts! (> input u0) (err u29936))
    (ok input)))
