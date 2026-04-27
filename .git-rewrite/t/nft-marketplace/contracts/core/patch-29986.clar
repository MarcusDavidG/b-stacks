;; fix edge case in timelock-executor
(define-public (patch-29986 (input uint))
  (begin
    (asserts! (> input u0) (err u29986))
    (ok input)))
